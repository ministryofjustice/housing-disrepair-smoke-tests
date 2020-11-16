When(/^I visit "([^"]*)"$/) do |path|
  visit path
end

Then(/^I should see "([^"]*)"$/) do |text|
  sleep 1
  expect(page).to have_text(text)
end

When(/^I click the "([^"]*)" button$/) do |text|
  click_button(text)
  sleep 1
end

When(/^I click the radio button "([^"]*)"$/) do |text|
  find('label', text: text).click
end

When(/^I choose "([^"]*)"$/) do |text|
  step %[I click the radio button "#{text}"]
  step %[I click the "Continue" button]
end

When(/^I have started the journey$/) do
  step %[I visit "/"]
  step %[I click the "Start" button]
end
