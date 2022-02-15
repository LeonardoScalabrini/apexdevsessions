@isTest
private class CTPersonRepositoryTest {
  private static final CTPersonRepository ctPersonRepository = new CTPersonRepository();

  @TestSetup
  static void setup() {
    CTPersonFixtureTest.createPerson();
    CTPersonFixtureTest.createTwoHundredPerson('another');
  }

  @isTest
  public static void findByName() {
    Test.startTest();
    List<Person__c> result = ctPersonRepository.findByName('name');
    Test.stopTest();
    System.assertEquals(1, result.size());
  }

  @isTest
  public static void findByNameShouldReturnEmpty() {
    Test.startTest();
    List<Person__c> result = ctPersonRepository.findByName('diff');
    Test.stopTest();
    System.assert(result.isEmpty());
  }

  @isTest
  public static void findByNameInSOQLLimit() {
    Test.startTest();
    List<Person__c> result = ctPersonRepository.findByName('another');
    Test.stopTest();
    System.assertEquals(200, result.size());
  }
}
