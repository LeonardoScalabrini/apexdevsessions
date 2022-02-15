@isTest
public class CTPersonFixtureTest {
  public static void createPerson() {
    Person__c person = new Person__c(Name = 'name', Mobile__c = '999999999');
    insert person;
  }

  public static void createTwoHundredPerson(String name) {
    List<Person__c> persons = new List<Person__c>();
    for (Integer i = 0; i < 200; i++) {
      persons.add(new Person__c(Name = name, Mobile__c = '999999999'));
    }
    insert persons;
  }
}
