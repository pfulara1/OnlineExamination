

Then(/^page should have text "([^"]*)"$/) do |desc|
    page.should have_content desc
end

When /^(?:|I )sign out$/ do
  #Capybara.send(:session_pool).each { |name, ses| ses.driver.quit }
  page.driver.submit :delete, destroy_user_session_path, {}
end

When /^(?:|I )choose "([^"]*)" from drop down "([^"]*)"$/ do |value, field|
  select(value, from: field)
end

When /^(?:|I )choose true$/ do
  choose('True')
end
