@deletePayroll
Feature: Negative test cases for deletePayroll request parameters

  Background: Initial configuration
    * url baseUrl
    * header Content-Type = 'application/json'
    * def requests = read ('classpath:requests/payrolls.json')

  Scenario: TC_P4.1: Delete a payroll with an invalid employeeId
    Given request requests.delete_InvalidEmployeeId
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_P4.2: Delete a payroll with an invalid payrollId
    Given request requests.delete_InvalidPayrollId
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"
