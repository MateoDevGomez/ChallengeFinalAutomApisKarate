Feature: Login
  Background:
    * def jsonData = read('classpath:data/loginUsers.json')
    * def csvData = read('classpath:data/loginUsers.csv')
    Given url "https://api.demoblaze.com"

  Scenario Outline: Login con usuario y password en formato JSON
    Given path "login"
    When request
  """
  {
    "username": "<username>",
    "password": "<password>"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null
    And match response != null
    And match response contains "Auth_token"

    Examples:
      |jsonData|



  Scenario Outline: Login con usuario y password en formato CSV
    Given path "login"
    When request
      """
      {
        "username": "<username>",
        "password": "<password>"
      }
      """
    And method  post
    Then status 200
    And match response.errorMessage == null
    And match response != null
    And match response contains "Auth_token"

    Examples:
      |csvData|