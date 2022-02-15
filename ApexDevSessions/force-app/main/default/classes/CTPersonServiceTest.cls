@isTest
private class CTPersonServiceTest {

    private static final CTPersonService ctPersonService = new CTPersonService(new CTPersonRepository());

    @isTest
    private static void getToken() {
        System.assertEquals('TOKEN', ctPersonService.getToken());
    }

    @isTest
    private static void findPerson() {
        Person__c person = CTPersonFixtureTest.createPerson('name');
        System.assertEquals(person.Name, ctPersonService.findPerson('name')[0].Name);
    }
}