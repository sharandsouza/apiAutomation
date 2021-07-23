Feature: API testing


	Background:
	* def expectedOutput = read('../data/response.json')
	* url 'https://reqres.in/api/users'
	
	Scenario: Get call test for user 2
	Given path 2
	When method GET
	Then status 200
	Then print response	
	And match response == expectedOutput[0]
	
	Scenario: Get call test for user 4
	Given path 4
	When method GET
	Then status 200
	Then print response	
	And match response == expectedOutput[2]

