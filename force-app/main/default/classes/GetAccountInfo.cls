Global with sharing class GetAccountInfo {
    webservice static String[] GetAccountInfo(String Id){
         Account a =[select name,AccountNumber,Type from account where id='0010I00002Kn6XeQAJ'];
        String[] result=new String[3] ;
        result[0]=a.Name;
        result[1]=a.AccountNumber;
        result[2]=a.Type;
        system.debug(result);
        return result;
        
                }
    
      
    

}