public class ContactSearch {
	public static List<Contact> searchForContacts(string lastName,string mailingPostalCode )
    {
        List<Contact> resultContacts = [SELECT ID,Name  
                                  FROM Contact 
                                  WHERE LastName=:lastName AND MailingPostalCode=:mailingPostalCode];
        System.debug(resultContacts);
        return resultContacts;
    }
}

//ContactSearch.searchForContacts('Disney','44116');