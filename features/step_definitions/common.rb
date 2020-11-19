When(/^I debug$/) do
  require 'pry'
  binding.pry
end

When(/^I visit "([^"]*)"$/) do |path|
  visit path
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end

When(/^I click the "([^"]*)" button$/) do |text|
  click_button(text)
  sleep 1 if (text == "Continue" || text == "Confirm")
end

When(/^I click the radio button "([^"]*)"$/) do |text|
  find('label', text: text).click
end

When(/^I check "([^"]*)"$/) do |text|
  find('label', text: text).click
end

When(/^I check "([^"]*)" and click continue$/) do |text|
  find('label', text: text).click
  step %[I click the "Continue" button]
end

When(/^I choose "([^"]*)"$/) do |text|
  step %[I click the radio button "#{text}"]
  step %[I click the "Continue" button]
end

When(/^I have started the journey$/) do
  step %[I visit "/"]
  step %[I click the "Start" button]
end

When(/^I have started an eligible journey$/) do
  step %[I have started the journey]
  step %[I should see "Are you renting your home in England or Wales?"]
  step %[I choose "Yes"]
  step %[I should see "Do you live in a private rented flat or house?"]
  step %[I choose "Yes"]
  step %[I should see "Have you stopped paying rent?"]
  step %[I choose "No"]
  step %[I should see "What is the problem with your housing?"]
end
