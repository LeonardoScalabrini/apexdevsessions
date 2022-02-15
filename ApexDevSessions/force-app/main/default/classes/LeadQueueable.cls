public class LeadQueueable implements Queueable {
  /**
   * Start Method Exemple
   * LeadQueueable leadQueuableInstance = new LeadQueueable();
   * Id jobId = System.enqueueJob(leadQueuableInstance);
   * */
  public void execute(QueueableContext context) {
    List<Lead> existingRecords = [SELECT Id, LeadSource FROM Lead];
    // write async code
    for (Lead record : existingRecords) {
      record.LeadSource = 'Web';
    }
    update existingRecords;

    // you can call another queueable class as well
  }
}
