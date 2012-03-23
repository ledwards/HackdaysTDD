@javascript
Feature: Booking an experience
  As a visitor or registered user
  I want to book an event
  So that I can have an awesome experience

  Scenario: Logged in user books an experience
    Given I am a logged in user
    And there is an experience with an upcoming event
    When I book the experience for myself
    Then I should see my successful order
    And Stripe should have recorded a charge for the order
