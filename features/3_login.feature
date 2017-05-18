Feature: Log in to Online Examination System
As a User
So that I can login to take Exam
I want to create a login page for user

As an Admin User
So that I can set questions for the quiz
I want to create a login page for Admin user

Background: Users have been created
Given I am on the sign up page
When I fill in "model[email]" with "teacher@testing.com"
When I fill in "model[password]" with "testing123"
When I fill in "model[password_confirmation]" with "testing123"
When I check "f[usertype]"
And I press "Sign up"
Then I should be on the home page
And I follow "Log Out"
Given I am on the sign up page
When I fill in "model[email]" with "user@testing.com"
When I fill in "model[password]" with "testing123"
When I fill in "model[password_confirmation]" with "testing123"
And I press "Sign up"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
And I follow "Log Out"

Scenario: Log in Teacher
Given I am on the login page
When I fill in "model[email]" with "teacher@testing.com"
When I fill in "model[password]" with "testing123"
And I press "Log in"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
When I follow "Log Out"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
  
Scenario: Log in Student
Given I am on the login page
When I fill in "model[email]" with "user@testing.com"
When I fill in "model[password]" with "testing123"
And I press "Log in"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
When I follow "Log Out"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
  