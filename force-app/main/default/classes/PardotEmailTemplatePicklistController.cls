global with sharing class PardotEmailTemplatePicklistController extends VisualEditor.DynamicPickList{
    
    List <Map<String, String>> getErrorList( String subject, String message ) {
        return new List <Map<String, String>> {
            new Map<String, String>{'subject'=>subject, 'htmlMessage'=>'<div style="font-weight: 600;font-size: 18px;color: #ffffff;text-shadow: 0px 0px 2px #f44336;">' + message + '</div>'}
        };
    }

    global override Boolean isValid(Object attributeValue){
        return true;
    }

    global override VisualEditor.DataRow getDefaultValue(){
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select an Email Template', '<h2>Select an Email Template</h1>');
        return defaultValue;
    }
    //We need to send JSON string back. However, due to a bug in AppBuilder (EmailBuilder), DynamicPickList components do not work on save because of {} (curly bracket)
    //We will add this bracket on LWC side for now as a workaround
    global override VisualEditor.DynamicPickListRows getValues() {
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();

        List <Map<String, String>> items;
        List<Pardot_Email_Template_Component_Setting__mdt> appSettings =  new List<Pardot_Email_Template_Component_Setting__mdt>();
        try {
            appSettings = [SELECT Id, Business_Unit__c, Client_Id__c, Client_Secret__c, Pardot_API_URL__c, Username__c, Password__c FROM Pardot_Email_Template_Component_Setting__mdt];
            if( appSettings.size() > 0 ) {
                Pardot_Email_Template_Component_Setting__mdt appSetting =  appSettings[0];
                String accessToken = Calypso.getAccessToken(
                    appSetting.Client_Id__c,
                    appSetting.Client_Secret__c,
                    appSetting.Username__c,
                    appSetting.Password__c
                );
                if( accessToken.length() > 0 ) {
                    Map<String, Object> listOneToOneQuery = Calypso.pardotAPICall(
                        appSetting.Pardot_API_URL__c,
                        accessToken,
                        'emailTemplate/version/4/do/listOneToOne?format=json',
                        'POST',
                        'application/x-www-form-urlencoded',
                        appSetting.Business_Unit__c
                    );
                    if( (Boolean) listOneToOneQuery.get('isSuccess') ) {
                        Map<String, Object> emailTemplates = (Map<String, Object>)((Map<String, Object>) listOneToOneQuery.get('result')).get('emailTemplates');
                        Integer count = (Integer) emailTemplates.get('count');
                        if( count > 0 ) {
                            Object[] templates = (Object[]) emailTemplates.get('templates');
                            items = new List <Map<String, String>>();
                            for(Object templateObj: templates){
                                Map<String, Object> template = (Map<String, Object>) templateObj;
                                Map<String, Object> readTemplateQuery = Calypso.pardotAPICall(
                                    appSetting.Pardot_API_URL__c,
                                    accessToken,
                                    'emailTemplate/version/4/do/read/id/' + (Integer) template.get('id') + '?format=json',
                                    'POST',
                                    'application/x-www-form-urlencoded',
                                    appSetting.Business_Unit__c
                                );
    
                                if( (Boolean) readTemplateQuery.get('isSuccess') ) {
                                    Map<String, Object> emailTemplate = (Map<String, Object>)((Map<String, Object>) readTemplateQuery.get('result')).get('emailTemplate');
                                    String htmlMessage = (String) emailTemplate.get('htmlMessage');
                                    if( htmlMessage.length() <= 10000 ) {
                                        items.add( new Map<String, String>{'subject'=>(String) emailTemplate.get('name'), 'htmlMessage'=>htmlMessage} );
                                    } else {
                                        items.add( new Map<String, String>{'subject'=>'*' + (String) emailTemplate.get('name'), 'htmlMessage'=>'HTML too long to generate. Supported length is up to 10000 characters and this template is ' + htmlMessage.length() + ' characters long.'} );
                                    }
                                }
                            }
                        } else {
                            items = getErrorList('No Result', 'No One-to-One Email Template Available');
                        }
                    } else {
                        items = getErrorList('Error accessing Pardot API', 'Please check for the parameters');
                    }
                } else {
                    items = getErrorList( 'Error obtaining access token', 'Please check for the credentials' );
                }
            } else {
                items = getErrorList( 'Settings Required', 'Please set the Pardot Email Template Setting Component Custom Metadata Settings' );
            }
        } catch (Exception e) {
            items = getErrorList( 'Error Occured', e.getMessage() );
        }

        for(Map<String, String> item: items){
            myValues.addRow( new VisualEditor.DataRow(item.get('subject'), item.get('htmlMessage')) );
        }
        return myValues;
    }
}
