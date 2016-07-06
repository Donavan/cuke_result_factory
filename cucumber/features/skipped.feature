@skipped_feature @feature_5 @feature
Feature: Skipped feature
  This feature has scenarios that are always skipped due to missing steps.

  @feature_5scenario_1 @skipped_scenario @scenario
  Scenario: Skipped regular scenario.
    This is a plain scenario which is always skipped due to missing steps.
    Given I have a stable scenario
    When I do something stable
    And I am missing a step
    Then Everything is awesome

  @feature_5_scenario_2 @skipped_scenario @scenario_outline
  Scenario Outline: Skipped scenario outline.
    This is a scenario outline which is always skipped due to missing steps.
    Given I have a stable scenario outline
    When I do <something> stable
    And I am missing a step
    Then <what> is awesome
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_5_scenario_3 @skipped_scenario @scenario_datatable
  Scenario: Skipped scenario with data tables.
    This is a scenario with datatables which is always skipped due to missing steps.
    Given I have a stable scenario with datatables
    And I am missing a step
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    Then Everything is awesome