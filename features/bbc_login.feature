Feature: BBC Login

  @incorrect_username
  Scenario: Inputting incorrect username credentials and correct password shows an error
    Given I access the BBC login page
    And I input incorrect username details
    And I input valid password
    When I click the sign in button
    Then I receive an error for not finding the account

  Scenario: Inputting correct username credentials and incorrect password shows an error
    Given I access the BBC login page
    And I input the correct username details
    And I input an invalid password
    When I click the sign in button
    Then I receive an error for the wrong password
