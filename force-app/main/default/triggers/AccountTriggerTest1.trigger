trigger AccountTriggerTest1 on Account (before Insert,before Update,after Insert,after Update,Before Delete,After Delete,After Undelete)
{
       
    if(Trigger.isInsert)
    {
        if(Trigger.isBefore)
        {
          for (Account a : Trigger.new)
            {
               
                if (a.Type=='Prospect')
                {
                    a.addError('The account can not be created');   
                }
                else{
                   
                    a.Description = 'New description';
                    a.Type  ='Customer-Direct';
                    integer RecordCount= Trigger.new.size();
                    system.debug(RecordCount + 'Account records inserted');
                    }
            }
        }
        if(Trigger.isAfter)
        {
          system.debug('HelloWorld');
           
        }
    }
    if(Trigger.isUpdate)
    {
        if(Trigger.isBefore)
        {
            for (Account a : Trigger.new)
            {
                a.Description = 'New Update description';
                a.Type  ='Prospect';
                Account oldid = Trigger.newmap.get(a.Id);
                   String NewRating =oldid.Rating;
                    if (NewRating =='Hot')
                {
                    a.addError('can not be updated for Account');
                }
                       List<Contact> listContact = [select id from contact where 
                AccountId  =:a.Id];
                for (Contact b : listContact)
                {
                    b.Email='Ranjeet13@mail.com';
                   update listContact; 
                    
                }
                
                
               
             }
             
            
        }
        if(Trigger.isAfter)
        {
            FirstClass.FirstMethod();
               
        }
        
    }
    if (Trigger.isDelete)
    {
         if(Trigger.isAfter)
        {
            FirstClass.FirstMethod();
        }   
        if(Trigger.isBefore)
        {
           for (Account a : Trigger.old)
            {
               
                if (a.Type=='Installation Partner')
                {
                    a.addError('The account can not be deleted');   
                }
        }
    }
    }
    
    if (Trigger.isUndelete)
    {
         if(Trigger.isAfter)
        {
            FirstClass.FirstMethod();
        }         
    }
    
}