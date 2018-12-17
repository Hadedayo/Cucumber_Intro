Feature: show a clear example of an example table

  @examples
  Scenario Outline: using an example table can expand your tests and make them data dynamic
    Given I have more than one data row in my example table
    And includes a <name> as a string and <age> as an integer
    Then I can print the <name> & <age> are

    Examples:
    | name | age |
    | Dave | 23  |
    | Tim  | 34  |
