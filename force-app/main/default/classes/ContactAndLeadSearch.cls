public class ContactAndLeadSearch  {
	public static List<List< SObject>> searchContactsAndLeads(string firstOrLastName )
    {
        //The method should then find any contact or lead that matches the string as part of either the first or last name
        List<List<SObject>> searchList = [FIND :firstOrLastName IN NAME FIELDS
                                      RETURNING Lead(Name,FirstName,LastName), Contact(FirstName,LastName,Department)];
        System.debug(searchList);
        Lead[] searchLeads = (Lead[])searchList[0];
		Contact[] searchContacts = (Contact[])searchList[1];
        System.debug('Found the following Leads.');
        for (Lead a : searchLeads) {
            System.debug(a.Name);
        }
        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
            System.debug(c.LastName + ', ' + c.FirstName);
        }
        return searchList;
    }
}

//List<List<SObject>> searchList = ContactAndLeadSearch.searchContactsAndLeads('smith');