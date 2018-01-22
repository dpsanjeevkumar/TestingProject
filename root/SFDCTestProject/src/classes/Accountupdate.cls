global class Accountupdate implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        return Database.getQueryLocator('SELECT Id,Name,Phone FROM Account ');
    }

    global void execute(Database.BatchableContext BC, List<Account> scope)
    {
      list<account> acc = new list<account>(); 
for (Account a : scope)
        {
           a.Phone='123';
           acc.add(a);
        }
        update acc;
    }  
    global void finish(Database.BatchableContext BC)
    {
    }
}