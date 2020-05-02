public class AccountUtils {
	public static List<Account> accountsByState (string StateAbbr)
    {
        List<Account> acctList = [SELECT ID,NAME FROM Account WHERE BillingState=:StateAbbr]; 
        return acctList;
    }
}
//AccountUtils.accountsByState('OH');