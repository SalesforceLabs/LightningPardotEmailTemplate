@isTest
private class PardotEmailTemplatePicklistCTest {

    @isTest static void testGetPardotEmailTemplate() {
        // Create the mock response based on a static resource
        MultiStaticResourceCalloutMock multimock = new MultiStaticResourceCalloutMock();
        multimock.setStaticResource('https://login.salesforce.com/services/oauth2/token','PardotEmailTemplateAccessToken');
        multimock.setStaticResource('https://pi.demo.pardot.com/api/emailTemplate/version/4/do/listOneToOne?format=json','PardotEmailTemplate');
        multimock.setStaticResource('https://pi.demo.pardot.com/api/emailTemplate/version/4/do/read/id/23657?format=json','PardotEmailTemplateDetails');
        multimock.setStatusCode(200);
        multimock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, multimock);

        PardotEmailTemplatePicklistController test1 = new PardotEmailTemplatePicklistController();
        test1.getValues();
        test1.getDefaultValue();
    }
    @isTest static void testGetPardotEmailTemplateError() {
        // Create the mock response based on a static resource
        MultiStaticResourceCalloutMock multimock = new MultiStaticResourceCalloutMock();
        multimock.setStaticResource('https://login.salesforce.com/services/oauth2/token','PardotEmailTemplateAccessToken');
        multimock.setStaticResource('https://pi.demo.pardot.com/api/emailTemplate/version/4/do/listOneToOne?format=json','PardotEmailTemplate');
        multimock.setStaticResource('https://pi.demo.pardot.com/api/emailTemplate/version/4/do/read/id/23657?format=json','PardotFilesListError');
        multimock.setStatusCode(403);
        multimock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Associate the callout with a mock response
        Test.setMock(HttpCalloutMock.class, multimock);

        PardotEmailTemplatePicklistController test1 = new PardotEmailTemplatePicklistController();
        test1.getValues();
        test1.getDefaultValue();
    }

    @isTest static void testTestMisc() {
        PardotEmailTemplatePicklistController test1 = new PardotEmailTemplatePicklistController();
        test1.isValid('Hello World');
        test1.getLabel('Hello World');
    }

}