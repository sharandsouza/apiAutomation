
Feature: Post call test
  
	Background:
	
	* url 'http://dummy.restapiexample.com/'
	
	
  Scenario Outline: create user details
    When path "api/v1/create"
    And request {"name":"<name>","salary":"<salary>","age":"<age>"}
    When method POST
    Then status 200
    * def result = response
    Then print result
    
   Given path 'api/v1/employee/'+ result.data.id
   When method GET
   Then status 200
   Then print 'response2....',response
   And match response.data contains {id:'#(result.data.id)'}
   
    Examples:
   |read('../data/inputData.csv')|
   