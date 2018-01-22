@RestResource(UrlMapping='/getMemberName/*')
Global class getMemberDetailsRest{
 @HttpGet   
    
    Global Static List<members__c> memberName(){
        String MemberName=Restcontext.request.params.get('MemberName');
         List<members__c>  mem = [select Id from members__c where Member_Name__c =:MemberName];
         return mem; 
    }
    
}