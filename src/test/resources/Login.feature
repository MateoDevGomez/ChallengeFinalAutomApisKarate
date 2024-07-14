Feature: Login
  Background:
    Given url "https://api.demoblaze.com"

  Scenario: Usuario y password correcto en login
    Given path "login"
    When request
  """
  {
    "username": "mateogomez",
    "password": "123"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null
    And match response != null
    And match response contains "Auth_token"


  Scenario: Usuario incorrecto en login
    Given path "login"
    When request
  """
  {
    "username": "mateonoexiste",
    "password": "12345"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null
    And match response != null
    And match response contains "Auth_token"

  Scenario: Password incorrecto en login
    Given path "login"
    When request
  """
  {
    "username": "mateogomez",
    "password": "12345"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null
    And match response != null
    And match response contains "Auth_token"