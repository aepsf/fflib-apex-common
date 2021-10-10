/**
 * Created by Peter Lin on 2021-09-20.
 * Name: HomeGrownClass
 */

public class HomeGrownClass{
    private Id getRecordTypeId(DescribeSObjectResult describeSObjectResult, String recordTypeDeveloperName){
        return describeSObjectResult.getRecordTypeInfosByDeveloperName().get(recordTypeDeveloperName)?.getRecordTypeId();
    }

    public static Id getRecordTypeId(String sObjectName, String recordTypeDeveloperName){
        Schema.DescribeSObjectResult describeSObjectResult = fflib_SObjectDescribe.getDescribe(sObjectName).getDescribe();
        return new HomeGrownClass().getRecordTypeId(describeSObjectResult, recordTypeDeveloperName);
    }

    public static Id getRecordTypeId(Schema.SObjectType token, String recordTypeDeveloperName){
        Schema.DescribeSObjectResult describeSObjectResult = fflib_SObjectDescribe.getDescribe(token).getDescribe();
        return new HomeGrownClass().getRecordTypeId(describeSObjectResult, recordTypeDeveloperName);
    }
}