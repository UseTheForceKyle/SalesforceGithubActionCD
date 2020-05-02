@isTest
public class AccountTriggerTest {
    @isTest static void TestCreateNewAccountInBulk() {
        List<Account> accts = new List <Account> ();
        for (integer i=0; i< 200; i++){
            Account acct = new Account(Name='Test Account '+i, BillingState='CA');
            accts.add(acct);
        }
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        List<Account> verifyAccts = [SELECT Id,BillingState,ShippingState FROM Account];
        System.assertEquals(200, verifyAccts.size());    
        for(Account a: verifyAccts)
        {
            System.debug(a.BillingState+' '+a.ShippingState);
            System.assertEquals(a.BillingState, a.ShippingState); 
        }
    }
}