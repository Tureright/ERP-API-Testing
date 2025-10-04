@getEmployeeById
Feature: Negative test cases for getEmployeeById request parameters

  Background: Initial configuraion
    * url baseUrl
    * header Content-Type = 'application/json'
    * def requests = read ('classpath:requests/employees.json')

  Scenario: TC_E1.1: Request with an invalid parameter type (not a string)
    Given params requests.getEmployee_InvalidType
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E1.2: Request with a string parameter of invalid length (not 20 characters)
    Given params requests.getEmployee_InvalidLength
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E1.3: Request with a missing or null parameter
    Given params requests.getEmployee_NullParameter
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
