Feature: View About Online Examination System
    As a viewer
    I want to see home page
    So that I can see information about exams
 
Scenario: Homepage
    Given I am on the home page
    Then page should have text "Welcome to Online Examination Portal!"
    And page should have text "List of Exams"
    
#   Scenario: Sign-in link
#   Given I am on home page 
#   Then page should have text "Sign-in"
  

#   Scenario: Sign Up link
#   Given I am on home page
#   Then page should have text "Sign-up"