@driver:chrome
@driver-options:--headless
Feature: Use specified browser

  Scenario Outline: A scenario that uses selenium

    Given I am on the test page
    When I type in the first name <firstname>
    And I type in the last name <lastname>
    Then I should see entered values of <expectedFirstname> and <expectedLastname>
    And I should be using Chrome

    Examples:
      |firstname|lastname| expectedFirstname | expectedLastname |
      |Joe      | Blanc  | Joe               | Blanc            |
      |John     | Doe    | John              | Doe              |