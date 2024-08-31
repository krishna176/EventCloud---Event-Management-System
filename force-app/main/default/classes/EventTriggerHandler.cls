public with sharing class EventTriggerHandler {
    public static void UpdateStatusToPlanning(List<CAMPX__Event__c> eList) {
        for(CAMPX__Event__c e : eList){
            e.CAMPX__Status__c = 'Planning';
            //e.CAMPX__StatusChangeDate__c  = DateTime.now();
        }
    }
    public static void UpdateStatusChanges(List<CAMPX__Event__c> newRecords, Map<Id,CAMPX__Event__c> oldMap) {
        for(CAMPX__Event__c e : newRecords){
            CAMPX__Event__c oldRecord = oldMap.get(e.id);
            if((e.CAMPX__StatusChangeDate__c != oldRecord.CAMPX__StatusChangeDate__c) || (e.CAMPX__Status__c != oldRecord.CAMPX__Status__c))
                e.CAMPX__StatusChangeDate__c  = DateTime.now();
        }
    }
}