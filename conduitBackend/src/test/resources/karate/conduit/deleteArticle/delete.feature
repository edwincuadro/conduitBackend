@deleteArticle
Feature: Delete an article
  As QA Automation
  I want to delete an article into the API service
  To validate response and status code

  Background: Base URL
    * url url

  Scenario: Log in with correct data

    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And path slug
    When method DELETE
    Then status 204