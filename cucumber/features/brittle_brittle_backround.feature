@brittle_feature @feature_9 @feature
Feature: Brittle background feature
  This feature has scenarios that fail in the background steps quite often, but not always

  Background:
    Given I have a stable scenario background
    When I do something brittle in the background

  @feature_9_scenario_1 @brittle_scenario @scenario
  Scenario: Brittle background scenario.
    This is a background scenario that fails quite often, but not always
    Given I have a stable scenario
    When I do something stable

  @feature_9_scenario_2 @brittle_scenario @scenario_outline
  Scenario Outline: Brittle background scenario outline.
    This is a background scenario outline that fails quite often, but not always
    Given I have a stable scenario outline
    When I do <something> stable
    Then <what> is awesome
  Examples:
    | something  | what       |
    | the tango  | the floor  |
    | the dishes | dinner     |

  @feature_9_scenario_3 @brittle_scenario @scenario_datatable
  Scenario: Brittle scenario with data tables.
    This is a background scenario with datatables that fails quite often, but not always
    Given I have a brittle scenario with datatables
    When I have awesome data
    | data | more_data |
    | foo  | bar       |
    | baz  | boat      |
    And I do something stable
    Then Everything is awesome

  @feature_9_scenario_4 @brittle_scenario @scenario
  Scenario: Brittle regular scenario.
  This is a plain scenario that breaks quite often, but not always
    Given I have a stable scenario
    When I do something stable
    Then Everything is awesome

  @feature_9_scenario_5 @brittle_scenario @scenario_outline
  Scenario Outline: Brittle scenario outline.
  This is a scenario outline that breaks quite often, but not always
    Given I have a stable scenario outline
    When I do <something> stable
    Then <what> is awesome
    Examples:
      | something  | what       |
      | the tango  | the floor  |
      | the dishes | dinner     |

  @feature_9_scenario_5 @brittle_scenario @scenario_datatable
  Scenario: Brittle scenario with data tables.
  This is a scenario with datatables that breaks quite often, but not always
    Given I have a brittle scenario with datatables
    When I have awesome data
      | data | more_data |
      | foo  | bar       |
      | baz  | boat      |
    And I do something stable
    Then Everything is awesome