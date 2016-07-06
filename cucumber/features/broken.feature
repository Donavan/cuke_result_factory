@broken_feature @feature_3 @feature
Feature: Broken feature
  This feature has scenarios that always break before getting to an assertion.

  @feature_1_scenario_1 @broken_scenario @scenario
  Scenario: Failing regular scenario.
    This is a plain scenario which always breaks before getting to an assertion.
    Given I have a broken scenario
    When I do something broken
    Then Everything is horrid

  @feature_3_scenario_2 @broken_scenario @scenario_outline
  Scenario Outline: Failing scenario outline.
    This is a scenario outline which always breaks before getting to an assertion.
    Given I have a broken scenario outline
    When I do <something> broken
    Then <what> is horrid
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_3_scenario_3 @broken_scenario @scenario_datatable
  Scenario: Failing scenario with data tables.
    This is a scenario with datatables which always breaks before getting to an assertion.
    Given I have a broken scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    And I do something broken
    Then Everything is horrid