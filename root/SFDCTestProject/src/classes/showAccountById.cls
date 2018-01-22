@RestResource(urlMapping='/showAccountByIds/*')
global class showAccountById {
    
    @HttpGet
    
    global static Account doGet(){
        RestRequest req = RestContext.request;
        RestResponse rep = RestContext.response;
    
    String AccountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
    Account result= [select Id, Name, Phone from Account where Id=:AccountId];
    return result;
    }
    }