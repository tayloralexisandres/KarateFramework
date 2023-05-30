Feature: Testing different end points of spartan API
  Background:
    * def spartanUrl = "http://54.226.211.37:8000"

Scenario: Get one spartan and verify
  * def expectedSpartan =
  """
{
    "id": 101,
    "name": "Ena",
    "gender": "Male",
    "phone": 3881729686
}
  """
  Given url spartanUrl
  And path "api/spartans"
  And path 101
  And header Accept = 'application/json'
  When method get
  Then match response == expectedSpartan