@register
Feature: Make log in into the service
  As QA Automation
  I want to log in into the API service
  To get authentication token

  Background: Base URL
    * url url
    * def logBody = read('karate/conduit/register/registerUserBody.json')
    * def logResponse = read('karate/conduit/register/registerUserResponse.json')

  Scenario: Register with correct data
    Given path 'users'
    And request logBody
    When method POST
    Then status 200
    And match response == logResponse

  @negativeTest

  Scenario Outline: Register with incorrect data
    Given path 'users'
    And request logBody
    And set logBody.email = <email>
    When method POST
    Then status 422
    Examples:
      | email |
      | 123   |
      | ""    |

