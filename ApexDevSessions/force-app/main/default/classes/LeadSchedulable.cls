public class LeadSchedulable implements Schedulable{  
  /**
   * Start Method Example
   * LeadSchedulable leadSchedulableInstance = new LeadSchedulable();
   * String cronExp = '00 30 3 ? * MON';
   * String jobId = System.schedule('Sample Job', cronExp, leadSchedulableInstance);
   * */
    public void execute(SchedulableContext sc){
        // write your code here
        List<Lead> existingRecords = [SELECT Id, LeadSource FROM Lead];
        // write async code
        for(Lead record : existingRecords){
            record.LeadSource = 'Web';
        }
        update existingRecords;
    }
}
