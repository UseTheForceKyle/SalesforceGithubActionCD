trigger AccountTrigger on Account(before insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.CreateAccounts(Trigger.New);
        for(Account a : trigger.new)
        {  
            if(a.ShippingState!=a.BillingState){
        		a.ShippingState   = a.BillingState ;
            }
        }
    }
}