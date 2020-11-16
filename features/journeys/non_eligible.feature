Feature: Non eligible

  Scenario: User is not resident in England or Wales
    Given I have started the journey
     Then I should see "Are you renting your home in England or Wales?"
      And I choose "No"
     Then I should see "Sorry, you’re not able to use this checker"

  Scenario: Not renting privately
    Given I have started the journey
     Then I should see "Are you renting your home in England or Wales?"
      And I choose "Yes"
     Then I should see "Do you live in a private rented flat or house?"
      And I choose "No"
     Then I should see "Sorry, you’re not able to use this checker"

  Scenario: Has stopped paying rent
    Given I have started the journey
     Then I should see "Are you renting your home in England or Wales?"
      And I choose "Yes"
     Then I should see "Do you live in a private rented flat or house?"
      And I choose "Yes"
     Then I should see "Have you stopped paying rent?"
      And I choose "Yes"
     Then I should see "You are advised not to stop paying rent"
