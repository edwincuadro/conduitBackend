@login
Feature: Make log in into the service
  As QA Automation
  I want to log in into the API service
  To get authentication token

Background: Base URL
  * url url

  Scenario: Log in with correct data
  * def logBody = read('karate/conduit/register/registerUserBody.json')

    Given path 'users'
    And request logBody
    When method POST
    Then status 200
