public class AccountHandler {
	public static Account insertNewAccount(String accountName)
    {
        Account acct = new Account(Name=accountName);
        try 
        {
            insert acct;
        } catch (DmlException e) 
        {
            System.debug('null');
            return null;
        }
            System.debug('account created');
        return acct;
    }
}