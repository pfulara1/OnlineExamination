

Then(/^page should have text "([^"]*)"$/) do |desc|
    page.should have_content desc
end
