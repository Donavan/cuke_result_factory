@stable_feature @feature_1 @feature
Feature: Stable feature
  This feature has scenarios that always pass.

  @feature_1_scenario_1 @stable_scenario @scenario
  Scenario: Stable regular scenario.
    This is a plain scenario which always passes.
    Given I have a stable scenario
    When I do something stable
    Then Everything is awesome

  @feature_1_scenario_2 @stable_scenario @scenario_outline
  Scenario Outline: Stable scenario outline.
    This is a scenario outline which always passes.
    Given I have a stable scenario outline
    When I do <something> stable
    Then <what> is awesome
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_1_scenario_3 @stable_scenario @scenario_datatable
  Scenario: Stable scenario with data tables.
    This is a scenario with datatables which always passes.
    Given I have a stable scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    Then Everything is awesome