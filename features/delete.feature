Feature: delete

  Background:
    Given Open the homepage
    Given There is an item with title "Test Title To Delete" and url "http://g.cn"



  Scenario: Delete item with title "Test Title To Delete" with confirm
    When I delete the item with name "Test Title" and Confirm to delete
    Then Search the item with name "Test Title To Delete" I should get 0 result

  Scenario: Delete item with title "Test Title To Delete" with refuse
    When I delete the item with name "Test Title" and Refuse to delete
    Then Search the item with name "Test Title To Delete" I should get 1 result
