Feature: User can see product list on the restaurant show page
  As a user,
  In order to make a choice,
  I would like to see a restaurant's product list

  Background:
    Given the following restaurants exist
      |name             |
      |Thomas Kebabrulle|
      |Olivers Burger  |
      |Borats Palace   |

    Given the following products exist within a specific restaurant
      | name                    | restaurant      |
      | Chicken wings           | Olivers Burger |
      | Oliver's Double Burger  | Olivers Burger |
      | Apple pie               | Olivers Burger |

  Scenario:
    When I visit the "Olivers Burger" show page
    Then I would like to see "Chicken wings"
    And I would like to see "Oliver's Double Burger"
    And I would like to see "Apple pie"
