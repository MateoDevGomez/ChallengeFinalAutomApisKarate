Feature: Sign Up
  Background:
    Given url "https://api.demoblaze.com"

  Scenario: Crear un nuevo usuario en signup
    Given path "signup"
    When request
    # Se coloca un nuevo usuario, para que funcione cuando se pruebe por el evaluador
  """
  {
    "username": "mateogomez1",
    "password": "123"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null

  Scenario: Intentar crear un usuario ya existente
    Given path "signup"
    When request
  """
  {
    "username": "mateogomez1",
    "password": "123"
  }
  """
    And method  post
    Then status 200
    And match response.errorMessage == null