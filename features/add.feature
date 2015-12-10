Feature: add
	
  Background:
  	Given Open the homepage
  	And Input "Test Title" to search
  	Then I get a num of the search Results

  Scenario Outline: Add bookmark
    Given I Click the add button to show the addBookmark dialog
    Then I enter <title> into inputTitle field
   	And I enter <url> into inputURL
    Then I click on add Button should get <status> of add function
    Then Close the alert and search "Test Title" again
    Then I should get <%result%> equal to %resultTmp%+1 of first item  
    
    Examples:
			|title 		      | url   		    | status						            |result|
			|"Test Title"   |"http://g.cn" 	|"Add success！"				        |%result%|
			|"" 			      |"" 			      |"请输入正确的书签名称/书签链接"|%result%|
			|"Test Title"   |"" 			      |"请输入正确的书签名称/书签链接"|%result%|
			|""   			    |"http://g.cn"	|"请输入正确的书签名称/书签链接"|%result%|

	# Scenario: Check the add result
	# 	Given I have add bookmark success
 #    Then Search "Test Title" to get the num should be num+1




  # Scenario: Add bookmark with input title only
  #   * Open the homepage
  #   * Search "Test Title"
  #   * Get the 0 result
  #   * Click the add button
  #   * Input "Test Title"
  #   * Click alert confirm button
  #   * Get result "failed"
  #   * Search "Test Title"
  #   * Get 0 result

  # Scenario: Add bookmark with input url only
  #   * Open the homepage
  #   * Search "Test Title"
  #   * Get the 0 result
  #   * Click the add button
  #   * Input "" and "http://c.gn"
  #   * Click confirm button
  #   * Get result "failed"
  #   * Search "Test Title"
  #   * Get 0 result