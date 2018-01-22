global class Schedclass implements Schedulable{
  global void execute(SchedulableContext ctx) {
 Account a =  new Account(Name='Sample Schedule Accunt');
 insert a;
}
}