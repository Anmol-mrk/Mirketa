public class antClass {
    
    
    public static List<Account> getName()
    {
        List<Account> a = [select name,website,rating,ownership from account];
        System.debug('====='+a);
            return a;
    }

    public static List<Contact> getContact()
    {
        List<Contact> cons = [select id,email,phone,name,Account.Name,accountid,firstname,lastname from Contact];
        return cons;
    }

    public static List<Lead> getLead()
    {
        List<Lead> cons = [select id,AnnualRevenue,Address from Lead];
        return cons;
    }

    public static List<Lead> getlimitLead()
    {
        List<Lead> cons = [select id,AnnualRevenue,Address from Lead limit 5];
        return cons;
    }

}