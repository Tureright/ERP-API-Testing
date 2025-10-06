# Karate Tests for Payroll API

This project contains automated tests for the Payroll API using [Karate](https://github.com/karatelabs/karate).

## Prerequisites

* Java 11+ installed
* Maven installed
* The deployed API URL (will not be stored in this repository for security reasons)

## Running the Tests

The tests require the `BASE_URL` variable to be set. There are two options:

### 1. Pass the URL via Maven command

Replace `<DeployedURL>` with your actual deployed API endpoint:

```bash
mvn test -DBASE_URL="<DeployedURL>"
```

### 2. Set an environment variable

You can set the environment variable `BASE_URL` in your system.

---

## Postman Tests and Debugging

In addition to the Karate test automation, this repository also includes a set of **Postman collections** used for validating and debugging the Payroll API endpoints. These collections contain the **happy path tests** (verifying that endpoints work under ideal conditions) and **general debugging tests** (used to inspect responses and troubleshoot API behavior).

You can find the exported Postman collection file in the `documentation` folder:

```
documentation/API Testing.postman_collection.json
```

This file includes all the Postman test cases used during the manual testing and debugging phase of the Payroll and Employee API modules.

---

## Test Cases Documentation

All test cases are documented in an Excel file located in the `documentation` folder:

```
documentation/APITestCases.xlsx
```

Each test case contains the following fields:

* **Test Case ID:** A unique identifier for the test case.
* **Title:** A short description of what the test validates.
* **Endpoint:** The API endpoint being tested.
* **Method:** The HTTP method used (e.g., GET, POST, PUT, DELETE).
* **Preconditions:** Any setup or state required before executing the test.
* **Parameters:** Input data or request body used for the test.
* **Expected Response:** The response expected if the endpoint works correctly.
* **Actual Response:** The actual result obtained during execution.
* **Priority:** The relative importance or severity of the test (e.g., High, Medium, Low).
* **Pass/Fail:** The final test outcome.

This Excel file provides a complete overview of the test coverage and helps ensure that all API endpoints are validated both functionally and structurally.
