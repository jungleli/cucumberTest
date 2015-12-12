When(/^I delete the item with name "([^"]*)" and Refuse to delete$/) do | delete_item |
	@homepage.clickToDelBookmark delete_item
	@homepage.alertRefuse
end

Then(/^Search the item with name "([^"]*)" I should get (\d+) result$/) do  | delete_item, expect |
  	expect(@homepage.searchDelItem delete_item).to eq expect.to_i
end


When(/^I delete the item with name "([^"]*)" and Confirm to delete$/)  do | delete_item |
	@homepage.clickToDelBookmark delete_item
	@homepage.alertConfirm
end


Given(/^There is an item with title "([^"]*)" and url "([^"]*)"$/) do | title, url |
	 if(@homepage.searchDelItem title)==0
	  	@homepage.addBookmarks title, url
	  	@homepage.alertConfirm
	 end
end