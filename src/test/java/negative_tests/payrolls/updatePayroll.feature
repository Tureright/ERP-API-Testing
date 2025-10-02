@updatePayroll
Feature: Negative test cases for updatePayroll request parameters

  Background: Initial configuraion
    * url baseUrl
    * def requests = read ('classpath:requests/payrolls.json')

  Scenario: TC_P3.1: Total deductions exceed total earnings
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.update_DeductionsDexceeded
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P3.2: Empty earnings array
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.update_EmptyEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P3.3: Negative earnings amount
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.update_NegativeEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P3.4: Zero total earnings
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.update_ZeroEarning
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P3.5: Negative deductions amount
    Given url baseUrl
    And header Content-Type = 'application/json'
    And request requests.update_NegativeDeduction
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
