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
      And I check "Yes, it's caused a physical health problem, or made an existing problem worse" and click continue
    Then I should see "How long has the problem been going on?"
      And I choose "More than 6 months"
    Then I should see "Have you told your landlord or letting agent?"
      And I check "Yes, I have written an email or letter" and click continue
    Then I should see "Is your landlord being abusive or threatening eviction?"
      And I choose "No"
    Then I should see "Is your landlord or letting agent entering your home without notice?"
      And I choose "Yes"
    Then I should see "It sounds like the problem may be urgent"
      And I choose "Yes, the problem is urgent"
    Then I should see "Check your answers"
      And I click the "Confirm" button
    Then I should see "Next steps: what to do now"
      And I should see "You said the problem had affected your health"
      And I should see "You said the problem may be serious enough for an emergency court order"
      And I should see "Your landlord may not enter your home without notice"
      And I should see "Write to your landlord or letting agent again"
      And I should see "Know your rights and your landlord's responsibilities"
      And I should see "Future steps and useful resources"
      And I should see "Help us improve, complete the survey"
      And I click the "Continue" button
    Then I should see "Your rights and your landlord's responsibilities"
      And I should see "Your landlord is responsible for making sure the gas supply is safe with no risk "
      And I should see "It is your landlord's responsibility to make sure that your home is structurally sound."
      And I should see "Your landlord or letting agent is only responsible for the maintenance of appliances that were in the property when you moved in."
      And I should see "It's not always easy to know whether your landlord is responsible for resolving problems with damp."
      And I should see "It's not always easy to determine whether your landlord is responsible for resolving problems with mice and other infestations."
      And I should see "It may help to take pictures of the problem, especially if it changes."
      And I click the "Continue" button
    Then I should see "Future steps and useful resources"
      And I should see "Speak to someone about the problem"
      And I should see "Find a legal service provider"
      And I should see "Check whether you are eligible for legal aid"
      And I should see "Check insurance policies or credit card agreements"
      And I should see "Support if you don't have legal representation"
      And I should see "Making complaints about landlords, letting agents and the local council"
