Feature: Consider taking landlord to court

  Background:
    Given I have started an eligible journey

  Scenario: Taking landlord to court
    Then I check "Gas, electricity, boiler, heating or hot water supply is not working"
     And I click the "Continue" button
    Then I should see "Gas, electricity, boiler, heating or hot water supply is not working"
     And I check "Hot water supply" and click continue
    Then I should see "Has your health been affected by this problem?"
     And I check "Yes, it's caused a physical health problem, or made an existing problem worse" and click continue
    Then I should see "How long has the problem been going on?"
     And I choose "More than 6 months"
    Then I should see "Have you told your landlord or letting agent?"
     And I check "Yes, I have told them in person or on the phone"
     And I check "Yes, I have written a text message, email or letter" and click continue
    Then I should see "Is your landlord being abusive or threatening eviction?"
     And I choose "No"
    Then I should see "Is your landlord or letting agent entering your home without notice?"
     And I choose "No"
    Then I should see "Have you contacted the local council?"
     And I choose "Yes"
    Then I should see "Have the local council carried out an inspection?"
     And I choose "Yes"
    Then I should see "Would you consider taking your landlord or letting agent to court?"
     And I choose "Yes"
    Then I should see "Have you tried working with a professional mediator?"
     And I choose "Yes"
    Then I should see "Have you gathered evidence from experts?"
     And I choose "Yes"
    Then I should see "Check your answers"
     And I click the "Confirm" button
    Then I should see "You said you may consider taking legal action"
    Then I should see "There is a process you need to follow to make a claim. Find out more about taking legal action"
     And I click the "Continue" button
    Then I should see "Your rights and your landlord's responsibilities"
     And I click the "Continue" button
    Then I should see "Future steps and useful resources"
    Then I should see "Find a legal service provider"
    Then I should see "Law Works"
    Then I should see "Advocate"