Feature: Urgent Journey

  Background:
    Given I have started an eligible journey

  Scenario: An Urgent Journey
    Then I check "Gas, electricity, boiler, heating or hot water supply is not working"
      And I check "Outside doors, walls, roof or windows are dangerous or need repair"
      And I check "Mice or other pests are causing a problem"
      And I check "Damp or mould is growing inside"
      And I check "Faulty smoke detectors, fire doors or obstructions causing a fire hazard"
      And I check "Faulty or missing appliance"
      And I check "Plumbing and leaks (inside or outside)" and click continue
    Then I should see "Gas, electricity, boiler, heating or hot water supply is not working"
      And I check "Boiler"
      And I check "Gas pipes" and click continue
    Then I should see "Outside doors, walls, roof or windows need repair"
      And I check "The roof or external walls are in a bad state of repair" and click continue
    Then I should see "Faulty smoke detectors, fire doors or obstructions causing a fire hazard"
      And I check "Access in or out of home is blocked" and click continue
    Then I should see "Water leak (inside or outside), sinks, baths, toilets, pipes and drains"
      And I check "Water is coming in to the property from outside"
      And I check "There is a leak inside" and click continue
    Then I should see "Has your health been affected by this problem?"
      And I check "Yes, there's a risk of developing or aggravating a physical health problem" and click continue
    Then I should see "Have you told your landlord or letting agent?"
      And I check "Yes, I have written a text message, email or letter" and click continue
    Then I should see "Are you concerned you will be evicted for asking for repairs?"
      And I choose "No"
    Then I should see "Is your landlord or letting agent entering your home without notice?"
      And I choose "Yes"
    Then I should see "Is the problem urgent?"
      And I choose "Yes, the problem is urgent"
    Then I should see "Check your answers"
      And I click the "Next steps" button
    Then I should see "Next steps: what to do now"
      And I should see "You said the problem had affected your health"
      And I should see "You said the problem was urgent"
      And I should see "Your landlord may not enter your home without notice"
      And I should see "Know your rights and your landlord's responsibilities"
      And I should see "Future steps and useful resources"
      And I should see "Help us improve, complete the survey"
