Feature: Login page should not be accessible with invalid credentials.

  @US_005
  Scenario: User cannot login with invalid username validating the error message.

    Given The user goes to the homepage
    When The user clicks the profile menu
    When The user clicks the sign in link
    When The user clicks the username's text box
    And The user enters invalid username
    When The user clicks the password's text box
    And The user enters valid password
    And The user clicks the sign in button
    Then The user sees the text of the error message

  @US_005
  Scenario: User cannot login with invalid password validating the error message.

    When The user clicks the username's text box
    And The user enters valid username
    When The user clicks the password's text box
    And The user enters invalid password
    And The user clicks the sign in button
    Then The user sees the text of the error message

  @US_005
  Scenario: User cannot login with invalid username and password validating the error message.

    When The user clicks the username's text box
    And The user enters invalid username
    When The user clicks the password's text box
    And The user enters invalid password
    And The user clicks the sign in button
    Then The user sees the text of the error message

  @US_005
  Scenario: User with invalid credentials should be given an option to reset their password.

    When The user clicks the label of "Did you forget your password?"
    Then The user sees the text of "Reset your password"

  @US_005
  Scenario: User should be given the option to navigate to registration page if they did not register yet.

    When The user clicks the label of "Register a new account"
    Then The user sees redirected to Registration page.


