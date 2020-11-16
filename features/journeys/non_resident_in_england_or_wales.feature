Feature: Non resident in England or Wales

  Scenario: Non resident
    Given I have started the journey
     Then I should see "Are you renting your home in England or Wales?"
      And I choose "No"
     Then I should see "Sorry, you’re not able to use this checker"
