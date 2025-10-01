@mytests
Feature: Negative test cases for getPayrollById request parameters

  Background: Initial configuraion
    * url baseUrl
    * def requests = read ('classpath:requests/payrolls.json')
  Scenario: Request with an invalid parameter type (not a string)
    Given params { action: 'getPayrollById', employeeId: "0ICpd0V13GjGvlbuAIWW", id: 123}
    When method get
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"