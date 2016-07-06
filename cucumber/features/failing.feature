@failing_feature @feature_2 @feature
Feature: Failing feature
  This feature has scenarios that always fail.

  @feature_1_scenario_1 @failing_scenario @scenario
  Scenario: Failing regular scenario.
    This is a plain scenario which always fails.
    Given I have a failing scenario
    When I do something stable
    Then Everything is horrid

  @feature_2_scenario_2 @failing_scenario @scenario_outline
  Scenario Outline: Failing scenario outline.
    This is a scenario outline which always fails.
    Given I have a failing scenario outline
    When I do <something> stable
    Then <what> is horrid
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_2_scenario_3 @failing_scenario @scenario_datatable
  Scenario: Failing scenario with data tables.
    This is a scenario with datatables which always fails.
    Given I have a failing scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    Then Everything is horrid