Feature: Simple API body header status checks
@wip
  Scenario: GET all books and verify status and headers
    Given url 'https://demoqa.com/BookStore/v1/Books'
    When method get
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Content-Length == '#present'