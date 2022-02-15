@isTest
private class CTPersonRepositoryTest {

    private static final CTPersonRepository ctPersonRepository = new CTPersonRepository();

    @isTest
    private static void findByName() {
        CTPersonFixtureTest.createPerson();
		List<Person__c> result = ctPersonRepository.findByName('name');
		System.assertEquals(1, result.size());
	}

    @isTest
    private static void findByNameShouldReturnEmpty() {
		CTPersonFixtureTest.createPerson();
		List<Person__c> result = ctPersonRepository.findByName('diff');
		System.assert(result.isEmpty());
	}

    @isTest
    private static void findByNameInSOQLLimit() {
		CTPersonFixtureTest.createTwoHundredPerson('name');
        List<Person__c> result = ctPersonRepository.findByName('name');
		System.assertEquals(200, result.size());
	}
}