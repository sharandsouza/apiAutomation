Feature: API testing

  Background: 
    * def expectedOutput = read('../data/response.json')

  Scenario: Get call test for user 3
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    * def data = response.data
    * def myFun =
      """
       function(arg){
        for (i=0; i<arg.length; i++){
        	if (arg[i].id == 9){
        		return arg[i]
        		}
        	}
       }
      """
    * def numberOfUsers = call myFun data
    Then print 'number of Users', numberOfUsers
