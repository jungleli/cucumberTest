Feature: add
	
  Background:
  	Given Open the homepage
  	Given I enter "Test Title To Add" to search and get 0 result

  Scenario Outline: Add bookmark
    When I enter <title> and <url> to add an item
    Then Confirm to add and I should see <status>
    Then Close the alert and search "Test Title To Add" again I should get <result> item
    
    Examples:
			|title 		             | url   		    | status						            |result|
			|"Test Title To Add"   |"http://g.cn" |"Add success"				          |1     |
			|"" 			             |"" 			      |"请输入正确的书签名称/书签链接"|0     |
			|"Test Title To Add"   |"" 			      |"请输入正确的书签名称/书签链接"|0     |
			|""   			           |"http://g.cn"	|"请输入正确的书签名称/书签链接"|0     |