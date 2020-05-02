public with sharing class AccountTriggerHandler {
	public static void CreateAccounts (List<Account> accts)
    {
        for (Account a : accts) {
            //copy billing state to shipping state
            if(a.ShippingState!=a.BillingState){
        		a.ShippingState   = a.BillingState ;
            }
        }
    }
}