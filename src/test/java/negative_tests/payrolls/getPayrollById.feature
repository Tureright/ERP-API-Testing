@getPayrollById
Feature: Negative test cases for getPayrollById request parameters

  Background: Initial configuration
    * url baseUrl
    * header Content-Type = 'application/json'

  Scenario: TC_P1.1: Request with an invalid parameter type (not a string)
    Given params { action: 'getPayrollById', employeeId: "0ICpd0V13GjGvlbuAIWW", id: 123}
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P1.2: Request with a string parameter of invalid length (not 20 characters)
    Given params { action: 'getPayrollById', employeeId: "0ICpd0V13GjGvlbuAIWW", id: "abc"}
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P1.3: Request with a string parameter of invalid length (not 20 characters)
    Given params { action: 'getPayrollById', employeeId: "0ICpd0V13GjGvlbuAIWW", id: null}
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
