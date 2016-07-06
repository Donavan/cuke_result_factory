@stable_feature @feature_6 @feature
Feature: Stable background feature
  This feature has scenarios that always pass.

  Background:
    Given I have a stable scenario background
    When I do something stable in the background

  @feature_6_scenario_1 @stable_scenario @scenario
  Scenario: Stable background scenario.
    This is a background scenario which always passes.
    Given I have a stable scenario
    When I do something stable


  @feature_6_scenario_2 @stable_scenario @scenario_outline
  Scenario Outline: Stable background scenario outline.
    This is a background scenario outline which always passes.
    Given I have a stable scenario outline
    When I do <something> stable
    Then <what> is awesome
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_6_scenario_3 @stable_scenario @scenario_datatable
  Scenario: Stable background scenario with data tables.
    This is a background scenario with datatables which always passes.
    Given I have a stable scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    Then Everything is awesome