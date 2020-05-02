public class NewCaseListController  
{
	private String filterStatus = 'New';
    
	public List<Case> getNewCases ()
    {
        
        List<Case> results = Database.query(
            'SELECT Id, CaseNumber ' +
            'FROM CASE ' +
            'WHERE STATUS = \'' + filterStatus +'\''
    		);
    	return results;
    }
}