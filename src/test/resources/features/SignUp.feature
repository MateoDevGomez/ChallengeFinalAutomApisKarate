Feature: Sign Up
  Background:
    * def jsonData = read('classpath:data/signupUsers.json')
    * def csvData = read('classpath:data/signupUsers.csv')
    Given url "https://api.demoblaze.com"

  Scenario Outline:  Crear un nuevo usuario y probar con uno ya existente en JSON
    Given path "signup"
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
    Examples:
      |jsonData|


  Scenario Outline:  Crear un nuevo usuario y probar con uno ya existente en CSV
    Given path "signup"
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
    Examples:
      |csvData|

