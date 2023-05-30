Feature: Simple Karate scripts
  @wip
  Scenario: How to print
    Given print "Hello World"
    * print 2+2
    # all same arithmetic operations of Java
    * def name = 'Mike'
    * def age = 30
    * print name,"is",age,"years old"
    # Mike is 30 years old
    # , concatenate variables and strings and inserts a space
