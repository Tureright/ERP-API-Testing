@getAllPayrollsByEmployee
Feature: Negative test cases for getAllPayrollsByEmployee request parameters

  Background: Initial configuration
    * url baseUrl
    * header Content-Type = 'application/json'
    * def requests = read ('classpath:requests/payrolls.json')

  Scenario: TC_P5.1: Request with an invalid parameter type (not a string)
    Given params requests.getAll_InvalidType
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P5.2: Request with a string parameter of invalid length (not 20 characters)
    Given params requests.getAll_InvalidLength
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P5.3: Request with a missing or null parameter
    Given params requests.getAll_NullParameter
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
