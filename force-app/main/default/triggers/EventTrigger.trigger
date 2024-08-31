trigger EventTrigger on CAMPX__Event__c (before insert, before update) {

    if(trigger.isInsert && trigger.isBefore){
        EventTriggerHandler.UpdateStatusToPlanning(Trigger.new);
    }
    if(trigger.isUpdate && trigger.isBefore){
        EventTriggerHandler.UpdateStatusChanges(Trigger.new, trigger.oldMap);
    }

}