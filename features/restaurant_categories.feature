Feature: User can see restaurant sorted by categories
  As a user
  In order to choose type of food
  I would like to see restaurants sorted by categories

  Background:
    Given the following categories exist
      | name            |
      | Chinese         |
      | Thai            |
      | French          |

    And these restaurants with respective categories exist
      | name              | category |
      | Thomas Kebabrulle | Chinese  |
      | Oliver's Burger   | Thai     |
      | Borat's Palace    | French   |


  Scenario:
    When I visit the landing page
    Then I would like to see "Thomas Kebabrulle" in the "Chinese" category
    And I would like to see "Oliver's Burger" in the "Thai" category
    And I would like to see "Borat's Palace" in the "French" category
    Then show me the page
