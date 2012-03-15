Feature: Items form
  Background: The new item page
    Given I am on the new item page

  Scenario Outline: Item data validation
    Given I fill in item with title <title> and tags <tags>
    And I should <out>

  Examples: Valid items
    | title | tags | out |
    | "USA promote the Site Blocking Law in Spain" | "usa, site-blocking" | be in show page |

  Examples: Invalid items
    | title | tags | out |
    | "" | "usa, site-blocking" | see "error" | 
    | "Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, Este texto ocupa XX caracteres por eso lo pondremos 5 veces, " | "usa, site-blocking" | see "error" | 






