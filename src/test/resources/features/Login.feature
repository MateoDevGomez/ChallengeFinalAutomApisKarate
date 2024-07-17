Feature: Login
  Background:
    * def jsonData = read('classpath:data/loginUsers.json')
    * def csvData = read('classpath:data/loginUsers.csv')
    Given url "https://api.demoblaze.com"

  Scenario Outline: Usuario y password correcto en login en JSON
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



  Scenario Outline: Usuario y password correcto en login en CSV
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