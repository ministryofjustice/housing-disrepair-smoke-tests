Feature: Consider taking landlord to court

  Background:
    Given I have started an eligible journey

  Scenario: Taking landlord to court
    Then I check "Gas, electricity, boiler, heating or hot water supply is not working"
     And I click the "Continue" button
    Then I should see "Gas, electricity, boiler, heating or hot water supply is not working"
     And I check "Hot water supply" and click continue
    Then I should see "Has your health been affected by this problem?"
     And I check "Yes, there's a risk of developing or aggravating a physical health problem" and click continue
    Then I should see "Have you told your landlord or letting agent?"
     And I check "Yes, I have told them in person or on the phone"
     And I check "Yes, I have written a text message, email or letter" and click continue
     Then I should see "Are you concerned you will be evicted for asking for repairs?"
      And I choose "No"
    Then I should see "Is your landlord or letting agent entering your home without notice?"
     And I choose "No"
    Then I should see "Is the problem urgent?"
     And I choose "No"
    Then I should see "Have you contacted the local council?"
     And I choose "Yes"
    Then I should see "Have the local council carried out an inspection?"
     And I choose "Yes"
    Then I should see "Would you consider taking your landlord or letting agent to court?"
     And I choose "Yes"
    Then I should see "Check your answers"
     And I click the "Next steps" button
    Then I should see "You said the problem had affected your health"
    Then I should see "You said you may consider taking legal action"
    Then I should see "There is a process you need to follow to make a claim. Find out more about taking legal action"
     And I click the "your rights and your landlord's responsibilities" link
    Then I should see "Your rights and your landlord's responsibilities"
    Then I should see "Go back to the 'What to do now' page."
     And I click the "back to the 'What to do now'" link
     And I click the "taking legal action" link
    Then I should see "Taking legal action against your landlord or letting agent"
