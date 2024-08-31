trigger SponsorTrigger on CAMPX__Sponsor__c (before insert) {
    if(trigger.isInsert && trigger.isInsert){
        SponsorTriggerHandler.UpdateStatusToPending(Trigger.new);
    }
}