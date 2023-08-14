@login @regression

Feature: Login Page

  Background:
    Given I access the webdriver university login page



    @smoke
  Scenario Outline: Validate - Successful & Unsuccessful Login
    When I enter a username <username>
    And I enter a password <password>
    And I click on the login button
    Then I should be presented with the following login validation message <loginValidationMessage>

    Examples:
      | username  | password     | loginValidationMessage |
      | webdriver | webdriver123 | validation succeeded   |
      | webdriver | password123  | validation failed      |
      | nenad     | test321      | validation failed      |
