@createPayroll
Feature: Negative test cases for createPayroll request parameters

  Background: Initial configuraion
    * url baseUrl
    * def requests = read ('classpath:requests/payrolls.json')

  Scenario: TC_P2.1: Total deductions exceed total earnings
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.create_DeductionsDexceeded
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P2.2: Empty earnings array
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.create_EmptyEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P2.3: Negative earnings amount
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.create_NegativeEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P2.4: Zero total earnings
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.create_ZeroTotalEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P2.5: Negative deductions amount
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.create_NegativeDeduction
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"