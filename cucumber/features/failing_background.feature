@failing_feature @feature_7 @feature
Feature: Failing background feature
  This feature has scenarios that always fail.

  Background:
    Given I have a stable scenario background
    When I do something stable in the background

  @feature_7_scenario_1 @failing_scenario @scenario
  Scenario: Failing background scenario.
    This is a background scenario which always fails.
    Given I have a failing scenario
    When I do something stable

  @feature_7_scenario_2 @failing_scenario @scenario_outline
  Scenario Outline: Failing background scenario outline.
    This is a background scenario outline which always fails.
    Given I have a failing scenario outline
    When I do <something> stable
    Then <what> is horrid
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_7_scenario_3 @failing_scenario @scenario_datatable
  Scenario: Failing background scenario with data tables.
    This is a background scenario with datatables which always fails.
    Given I have a failing scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    Then Everything is horrid