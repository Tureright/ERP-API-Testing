@createEmployee
Feature: Negative test cases for createEmployee request parameters

  Background: Initial configuration
    * url baseUrl
    * header Content-Type = 'application/json'
    * def requests = read('classpath:requests/employees.json')

  Scenario: TC_E2.1: The length of the national ID is less than 10 digits
    Given request requests.createEmployee_NationalId_Short
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E2.2: The length of the national ID is more than 10 digits
    Given request requests.createEmployee_NationalId_Long
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E2.3: National ID with non-numeric characters
    Given request requests.createEmployee_NationalId_NonNumeric
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E2.4: National ID with a non-existent province code
    Given request requests.createEmployee_NationalId_InvalidProvince
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E2.5: The third digit of the national ID is more than 5
    Given request requests.createEmployee_NationalId_ThirdDigitInvalid
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E2.6: The tenth digit does not conform to the check digit validation rules
    Given request requests.createEmployee_NationalId_CheckDigitInvalid
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"