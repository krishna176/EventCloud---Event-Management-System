public with sharing class SponsorTriggerHandler {
    public static void UpdateStatusToPending(List<CAMPX__Sponsor__c> sList) {
        for(CAMPX__Sponsor__c s : sList){
            if( string.isEmpty(s.CAMPX__Status__c) || s.CAMPX__Status__c != 'Rejected'){
                s.CAMPX__Status__c = 'Pending';
            }
            if(s.CAMPX__ContributionAmount__c == null || s.CAMPX__ContributionAmount__c <= 0) {
                s.CAMPX__Tier__c = '';
            }
            if(s.CAMPX__ContributionAmount__c > 0 && s.CAMPX__ContributionAmount__c < 1000){
                s.CAMPX__Tier__c = 'Bronze';
            }
            if(s.CAMPX__ContributionAmount__c >= 1000 && s.CAMPX__ContributionAmount__c < 5000){
                s.CAMPX__Tier__c = 'Silver';
            }
            if(s.CAMPX__ContributionAmount__c >= 5000){
                s.CAMPX__Tier__c = 'Silver';
            }
        }

    }
}