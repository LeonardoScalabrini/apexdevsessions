@isTest
private class CTPersonServiceTest {
  private static final CTPersonService ctPersonService = new CTPersonService(
    new CTPersonRepository()
  );

  @TestSetup
  static void setup() {
    CTPersonFixtureTest.createPerson();
  }

  @isTest
  public static void getToken() {
    System.assertEquals('TOKEN', ctPersonService.getToken());
  }

  @isTest
  public static void findPerson() {
    Test.startTest();
    System.assertEquals('name', ctPersonService.findPerson('name')[0].Name);
    Test.stopTest();
  }
}
