Feature: Set and take Exam in Online Examination System
As a Teacher
I want to set exam
So that users can attempt exam

Background: users have been created
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

Scenario: Create and attempt Exam
Given I am on the login page
When I fill in "model[email]" with "teacher@testing.com"
When I fill in "model[password]" with "testing123"
And I press "Log in"
Then I should be on the home page
And page should have text "Welcome to Online Examination Portal!"
When I follow "Create Exam"
Then I should be on the new exam page
When I fill in "name" with "Test 1"
And I fill in "description" with "General Quiz"
And I press "Create Exam"
Then I should be on the exams page
