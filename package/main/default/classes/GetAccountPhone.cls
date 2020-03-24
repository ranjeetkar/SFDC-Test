global with sharing class GetAccountPhone {
     webservice static String GetAccountPhone(String InPhone)
    {
      Account Acc=new Account(Phone=InPhone);
              
        
        Account a =[select name,AccountNumber from account where Phone = :Acc.Phone];
        system.debug(a);
        String b=String.valueOf(a.AccountNumber);
         return b;
               
    }

}