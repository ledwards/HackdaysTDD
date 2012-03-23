@javascript
Feature:
    As a user
    I want to create a mingle
    So that I can have a rockin' good time

  Scenario: User creates a mingle
    When I go to the home page
    And I follow "Get Started"
    And I grant LinkedIn access
    Then I should be on the new user page

    When I select "Pivotal Labs" from "Your company"
    And I fill in "Your email" with "lee@sidetour.com"
    And I choose "Male"
    And I press "Let's do this"

    Then I should be on the new mingle page

    When I pick a Tuesday
    And I choose "alcohol" within the plan step
    And I choose "none" within the plan step
    And I follow "Continue"
    Then I should see "Click some faces" within the invite step

    When I click the image link for Vipin Goyal
    And I click the image link for Mark Webster
    And I follow "Continue"

    Then I should see "You've invited 2 people from SideTour"
    And I should see "and they can invite up to 18 more people"
    And I check "I agree. Fair enough."
    And I press "Finish with no going backsies"
    Then I should be on the mingles page
    And I should see my mingle

