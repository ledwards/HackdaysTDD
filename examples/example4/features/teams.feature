Feature: Manage teams
  As a user
  I want to manage teams at the Hackathon
  So that I can keep track of which team is presenting when

  Scenario: User creates a team
    Given I am on the teams page
    When I create a new team
    Then I should be able to see the new team
