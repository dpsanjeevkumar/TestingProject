Global class wsdlExampleProvider {
    webservice static  String createAcct(String Name){
        Account act = new Account();
        act.Name = Name;
        insert act;
           system.debug('Account details'+act);     
        if(act.Id !=null){
            return 'Success';
                }else{
                    return 'Failed';
                }
    }
    }