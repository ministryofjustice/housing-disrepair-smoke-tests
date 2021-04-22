Feature: Gas Problems

  Background:
    Given I have started an eligible journey

  Scenario: Gas problems selected
    Then I check "Gas, electricity, boiler, heating or hot water supply is not working"
     And I click the "Continue" button
    Then I should see "Gas, electricity, boiler, heating or hot water supply is not working"
     And I check "Hot water supply" and click continue
    Then I should see "Has your health been affected by this problem?"
     And I check "Yes, it's caused a physical health problem, or made an existing problem worse" and click continue
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
     And I choose "No"
    Then I should see "Check your answers"
     And I click the "Next steps" button
    Then I should see "Next steps: what to do now"
      And I should see "You said the problem had affected your health"
      And I should see "Know your rights and your landlord's responsibilities"
      And I should see "Future steps and useful resources"
      And I should see "Help us improve, complete the survey"
