trigger CTPersonTrigger on Person__c(
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {
  CTPersonService ctPersonService = new ctPersonService(
    new CTPersonRepository()
  );

  switch on Trigger.operationType {
    when BEFORE_INSERT {
      ctPersonService.updateStatus(Trigger.new);
    }
    when BEFORE_UPDATE {
      ctPersonService.updateIfStatusChange(Trigger.new, Trigger.oldMap);
    }
  }
}
