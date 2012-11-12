Feature: Announce lunch desire
  In order to meet up with others for lunch
  Users
  Should be able to announce their lunch desires

  Scenario: Announce lunch desire
    Given I am "Jason"
    When I announce that I'd like to go to "Hot Doug's"
    Then the main page should say "Jason wants to go to Hot Doug's"

  Scenario: Change lunch desire
    Given I am "Jason"
    And I have just announced that I'd like to go to "Hot Doug's"
    When I change my lunch destination desire to be "Portillo's"
    Then the main page should say "Jason wants to go to Portillo's"
