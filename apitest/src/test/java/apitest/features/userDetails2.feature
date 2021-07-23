
Feature: API testing


	Background:
	* def expectedOutput = read('../data/response.json')
	* def result = call read('userDetails1.feature')
	
	
	Scenario: Get call test for user 3
	Given url 'https://reqres.in/api/users/3'
	When method GET
	Then status 200
	And match response == expectedOutput[1]
	#Then print 'required result......',result
	* def last_name = result.response.data.last_name
	Then print last_name_value = 'last_name_value.....',last_name
	
	



