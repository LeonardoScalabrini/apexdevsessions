public with sharing class CTPersonService {
  private final CTPersonRepository ctPersonRepository;

  public CTPersonService(CTPersonRepository ctPersonRepository) {
    this.ctPersonRepository = ctPersonRepository;
  }

  public String getToken() {
    return 'TOKEN';
  }

  public List<Person__c> findPerson(String searchTerm) {
    return ctPersonRepository.findByName(searchTerm);
  }

  public List<Person__c> updateStatus(List<Person__c> persons) {
    for (Person__c person : persons) {
      person.Health_Status__c = 'Green';
    }
    return persons;
  }

  public List<Person__c> updateIfStatusChange(
    List<Person__c> persons,
    Map<Id, Person__c> mapPersons
  ) {
    for (Person__c person : persons) {
      if (
        person.Health_Status__c != mapPersons.get(person.id).Health_Status__c
      ) {
        person.Status_Update_Date__c = Date.today();
      }
    }
    return persons;
  }
}
