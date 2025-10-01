# Karate Tests for Payroll API

This project contains automated tests for the Payroll API using [Karate](https://github.com/karatelabs/karate).

## Prerequisites

- Java 11+ installed
- Maven installed
- The deployed API URL (will not be stored in this repository for security reasons)

## Running the Tests

The tests require the `BASE_URL` variable to be set. There are two options:

### 1. Pass the URL via Maven command

Replace `<DeployedURL>` with your actual deployed API endpoint:

```bash
mvn test -DBASE_URL="<DeployedURL>"
```

### 2. Pass the URL via Maven command

You can set the environment variable BASE_URL in your system.
