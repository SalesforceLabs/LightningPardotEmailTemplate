global with sharing class Calypso {

    public static Boolean listContains(Object[] source, Object target) {
        return (new Set<Object>(source)).contains(target);
    }
    
    public static String getAccessToken( String client_id, String client_secret, String username, String password ) {
        Map<String, Object> parameters = new Map<String, Object>();
        parameters.put('url', 'https://login.salesforce.com/services/oauth2/token');
        parameters.put('type', 'POST');
        parameters.put('headers', new Map<Object, Object> {
            'Content-Type'	=> 'application/x-www-form-urlencoded'
        });
        parameters.put('data', new Map<Object, Object> {
            'grant_type'	=> 'password',
           	'client_id'		=> client_id,
            'client_secret'	=> client_secret,
            'username'		=> EncodingUtil.urlEncode(username, 'UTF-8'),
            'password'		=> password
        });
        Map<String, Object> result = Calypso.ajax(parameters);
        if( (Integer) result.get('statusCode') == 200 ) {
            return (String) ((Map<String, Object>) result.get('json')).get('access_token');
        }
        return '';
    }
    
    public static Map<String, Object> pardotAPICall(String apiURL,
                                                    String access_token,
                                                    String command, 
                                                    String type,
                                                    String contentType,
                                                    String businessUnit) {
                                                        
        Map<String, Object> parameters = new Map<String, Object>();
        parameters.put('url', apiURL + command);
        parameters.put('type', type);
        parameters.put('headers', new Map<Object, Object> {
            'Authorization'				=> 'Bearer ' + access_token,
			'Pardot-Business-Unit-Id'	=> businessUnit,
            'Content-Type'              => contentType
        });
                                                        
        Map<String, Object> result = Calypso.ajax(parameters);
        String error = (String) ((Map<String, Object>) result.get('json')).get('err');
		if( (Integer) result.get('statusCode') == 200 && error == null ) {
            return new Map<String, Object> {
                'isSuccess'				=> true,
                'result'				=> (Map<String, Object>) result.get('json')
            };
		}                                              
        return new Map<String, Object> {
			'isSuccess'					=> false
        };
    }

    public static Map<String, String> convertObjectMap( Map<Object, Object> obj ) {
        Map<String, String> val = new Map<String, String>();
        for(Object keyObj: obj.keySet()) {
            val.put( (String) keyObj, String.valueof( obj.get(keyObj) ) );
        }
        return val;
    }
    
    public static CalloutException throwException( String message ) {
        CalloutException e = new CalloutException();
		e.setMessage(message);
		return e;
    }
    
    @AuraEnabled
    @RemoteAction
    public static Map<String, Object> ajax(Map<String, Object> parameters) {
        if( !parameters.containsKey('url') ) {
            throw throwException('URL endpoint does not exist');
        }
        String url 						= (String) parameters.get('url');
        String type						= 'GET';
        if( parameters.containsKey('type') ) {
            type 					= (String) parameters.get('type');
        }
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint( url );
        request.setMethod( type );
        
        if( parameters.containsKey('headers') ) {
            Map<String, String> headers 	= convertObjectMap( (Map<Object, Object>) parameters.get('headers') );
            for(String key: headers.keySet()) {
                request.setHeader(key, headers.get(key));
            }
        }
        if( parameters.containsKey('data') ) {
            Map<String, String> data 	= convertObjectMap( (Map<Object, Object>) parameters.get('data') );
            String body						= '';
            for(String key: data.keySet()) {
                body = body + key + '=' + data.get(key) + '&';
            }
            body							= body.removeEnd('&');
            request.setBody(body);
        }
        
        Http http = new Http();
		HttpResponse response = http.send(request);
        
        Map<String, Object> result = new Map<String, Object>();
        result.put('statusCode', response.getStatusCode());
        Map<String, Object> jresult;
        try {
            result.put('json', (Map<String, Object>) JSON.deserializeUntyped(response.getBody()));
        } catch( Exception e ) {
            result.put('raw', response.getBody());
        }
        return result;
    }
}