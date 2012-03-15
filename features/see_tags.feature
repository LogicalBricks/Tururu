Feature: See Tags
  Scenario Outline: See all items of tags
    Given there is an item with title "<title>" and tag "<tag>" 
    When I visit the page of tag "<tag>"
    Then I should see "<title>"

  Examples:
    | title | tag |
    | Obama accept law against the citizens | USA | 
    | USA promote war | USA | 
     
