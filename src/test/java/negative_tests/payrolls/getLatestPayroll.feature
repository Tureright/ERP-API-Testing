@getLatestPayroll
Feature: Negative test cases for getLatestPayroll request parameters

  Background: Initial configuraion
    * url baseUrl
    * def requests = read ('classpath:requests/payrolls.json')

  Scenario: TC_P6.1: Request with an invalid parameter type (not a string)
    Given url baseUrl
    And params requests.getLatest_InvalidType
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P6.2: Request with a string parameter of invalid length (not 20 characters)
    Given url baseUrl
    And params requests.getLatest_InvalidLength
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P6.3: Request with a missing or null parameter
    Given url baseUrl
    And params requests.getLatest_NullParameter
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
