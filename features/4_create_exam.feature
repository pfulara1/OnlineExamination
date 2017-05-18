Feature: Set and take Exam in Online Examination System
As an Admin User
So that I can make changes to questions
I want to add new questions or modify given questions

As a User
So that I can view various  available quizzes and attempt them
I want to select quiz and its difficulty level

As a User
So that I can review my scores
I want to check my score so that I can see my performance

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
When I follow "Create New Question"
And I fill in "content" with "A flea can jump more than 200 times its height."
And I fill in "option1" with "True"
And I fill in "option2" with "False"
#And I choose from drop down
And I choose "General Quiz" from drop down "exam_id"
And I press "Add Question To Exam"
Then I should be on the questions page
And I follow "Log Out"
Given I am on the login page
When I fill in "model[email]" with "user@testing.com"
When I fill in "model[password]" with "testing123"
And I press "Log in"
Then I should be on the home page
And I follow "General Quiz"
And I choose true
And I press "Submit Quiz"
Then page should have text "You Have Scored"
Then I follow "Home"



