Global class AccountService {
    webservice static String CreateCustomer(String Name, String Address, String Phone){
        members__c mem = new members__c();
        mem.Member_Name__c = Name;
        mem.Address__c=Address;
        mem.Mobile_Phone__c=Phone;
       
        insert mem;
        
        if(mem.Id !=null){
            return 'Success';
        } else{
                    return 'Failed';
                }
    }
}