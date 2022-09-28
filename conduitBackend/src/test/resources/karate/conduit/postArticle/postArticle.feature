@postArticle
Feature: Post a new article
  As QA Automation
  I want to post a new article into the API service
  To validate response and status code

  Background: Base URL
    * url url
    * def postArtBody = read('karate/conduit/postArticle/postArticleBody.json')
    * def postArtResponse = read('karate/conduit/postArticle/postArticleresponse.json')

  Scenario: Post an article with correct data

    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And request postArtBody
    When method POST
    Then status 200
    And match response == postArtResponse

    @negativeTest
    Scenario Outline: Post an article with incorrect data
    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And request postArtBody
    And set postArtBody.tittle = '<tittle>'
    When method POST
    Then status 200
      Examples:
        | tittle |
        | 123*   |
        |        |