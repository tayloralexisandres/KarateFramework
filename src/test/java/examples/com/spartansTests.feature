Feature: Testing different end points of spartan API
  Background:
    * def spartanUrl = "http://3.218.244.38:8000"
   # * def spartanUrl = "http://54.226.211.37:8000/"

Scenario: Get one spartan and verify
  * def expectedSpartan = read("classpath:examples/data/expectedSpartan.json")
  Given url spartanUrl
  And path "api/spartans"
  And path 99
  And header Accept = 'application/json'
  When method get
  Then match response == expectedSpartan

  Scenario: Query parameters in Karate
    Given url spartanUrl
    And path "api/spartans/search"
    And param nameContains = 'j'
    And param gender = 'Female'
    When method get
    Then status 200
    And match each response.content[*].gender == 'Female'

  Scenario: POST a spartan by using spartan generator JAVA class file
    * def SpartanDG = Java.type("examples.utilities.SpartanDataGenerator")
    * def newSpartan = SpartanDG.createSpartan()
    # returns MAP object, Karate automatically turns it into JSON object
    * print newSpartan.name