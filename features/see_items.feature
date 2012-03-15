Feature: See Items
  Scenario: See all items
    Given there is a User
    And the User has posted the item with title "Item 1"
    When I visit the page for items
    Then I should see "Item 1"

