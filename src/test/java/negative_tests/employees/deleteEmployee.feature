@deleteEmployee
Feature: Negative test cases for deleteEmployee request parameters

  Background: Initial configuration
    * url baseUrl
    * header Content-Type = 'application/json'
    * def requests = read('classpath:requests/employees.json')

  Scenario: TC_E4.1: The employee ID does not exist in the database
    Given request requests.deleteEmployee_NonExistentId
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"

  Scenario: TC_E4.2: The employee ID is null
    Given request requests.deleteEmployee_NullId
    When method post
    Then status 200
    * print response
    * match response.success == false
    * match response.error == "#string"