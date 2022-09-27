@postArticle
Feature: Post a new article
  As QA Automation
  I want to post a new article into the API service
  To validate response and status code

  Background: Base URL
    * url url

  Scenario: Log in with correct data
    * def postArtBody = read('karate/conduit/postArticle/postArticleBody.json')

    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And request postArtBody
    When method POST
    Then status 200