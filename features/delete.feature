Feature: delete

  Background:
    Given Open the homepage

  Scenario: Delete bookmark with confirm
    When Click delete button to delete the first item and Confirm to delete
    Then Search the item with ID which equals to %ID% should get 0 result


  Scenario: Delete bookmark with refuse
    When Click delete button to delete the first item and Refuse to delete
    Then Search the item with ID which equals to %ID% should get 1 result