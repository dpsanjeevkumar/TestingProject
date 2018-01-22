@RestResource(urlMapping='/showAccounts/*')
global class showAccountsCl {
    
    @HttpGet
    
    global static List<Account> showAccountDetails(){
      List<Account> acct = new List<Account>();
   try{
        acct = [select Id, Phone, name from Account];
        return acct;
    }
catch(Exception ex){
 system.debug('Error' +ex.getMessage());
}
return acct;
}
}