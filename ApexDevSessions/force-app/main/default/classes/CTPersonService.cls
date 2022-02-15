public with sharing class CTPersonService {
    
    private final CTPersonRepository ctPersonRepository;

    public CTPersonService(CTPersonRepository ctPersonRepository) {
        this.ctPersonRepository = ctPersonRepository;
    }

    public String getToken(){
        return 'TOKEN';
    }

    public List<Person__c> findPerson(String searchTerm){
        return ctPersonRepository.findByName(searchTerm);
    }
}