public class batch_class implements Database.Batchable<sObject>{
  String Field;
  String Query;
  String Value;
  
    public batch_class(String f, String q, String v){
    Field=f; Query=q; Value=v;
      }

    public Database.queryLocator start(Database.BatchableContext con){
    return Database.getQueryLocator(Query);
    }
   
    public void execute(Database.BatchableContext con, List<Account> scope){
      for(Account a:scope) {
      a.put(Field,Value);
      }
      
       update scope;
     }

    
  public void finish(Database.BatchableContext con){
  
  }
}