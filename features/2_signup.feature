Feature: Sign Up in Online Examination System
As a User
So that I can register and create account
I want to create a registration page

As an Admin User
So that I can register and create account
I want to create a registration page

Scenario: Sign Up Page
Given I am on the sign up page
Then page should have text "Sign up"
And page should have text "Email"
And page should have text "Password"
And page should have text "Password confirmation"

Scenario: Sign up Teacher
Given I am on the sign up page
When I fill in "model[email]" with "teacher@ankurdesai.com"
When I fill in "model[password]" with "testing123"
When I fill in "model[password_confirmation]" with "testing123"
When I check "f[usertype]"
And I press "Sign up"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
And page should have text "Create Exam"
And page should have text "Create New Question"


Scenario: Sign up User
Given I am on the sign up page
When I fill in "model[email]" with "teacher@ankurdesai.com"
When I fill in "model[password]" with "testing123"
When I fill in "model[password_confirmation]" with "testing123"
And I press "Sign up"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
