Feature: View About Online Examination System
As a User
So that I can view information on the site to see what it offers
I want to see details on homepage and provide way to sign up or log in to account

Scenario: Homepage
Given I am on the home page
Then page should have text "Welcome to Online Examination Portal!"
And page should have text "List of Exams"

Scenario: Sign-in link
Given I am on the home page 

Scenario: Sign Up link
Given I am on the home page
Then page should have text "Sign Up"
