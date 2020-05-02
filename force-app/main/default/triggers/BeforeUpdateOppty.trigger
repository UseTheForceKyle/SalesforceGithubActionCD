trigger BeforeUpdateOppty on Opportunity (before update ) {
    String errormsg = '';
	for(Opportunity oppty : trigger.new)
    {
        errormsg+='1'  ;
        if(1==1)
        errormsg+='2'  ;
        if(1==2)
        errormsg+='3'  ;
        oppty.addError(errormsg);
    }
}