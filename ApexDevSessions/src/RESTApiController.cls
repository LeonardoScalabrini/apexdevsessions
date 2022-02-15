@RestResource(urlMapping='/endpoint/*')
global with sharing class RESTApiController {
  @HttpGet
  global static String doGet() {
    String result = 'Estou sendo chamado de um ambiente salesforce';
    RestContext.response.addHeader('Content-Type', 'application/json');
    RestContext.response.responseBody = Blob.valueOf(result);
    return result;
  }
}
