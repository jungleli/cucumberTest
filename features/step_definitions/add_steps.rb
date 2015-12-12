Given(/^I enter "([^"]*)" to search and get (\d+) result$/) do |title, result|
   if(@homepage.searchAddItem title)> result.to_i
		@homepage.clickToDelNewBookmark title
		@homepage.alertConfirm
	 end
end

When(/^I enter "([^"]*)" and "([^"]*)" to add an item$/) do |title, url|
  	  	@homepage.addBookmarks title, url

end

Then(/^Confirm to add and I should see "([^"]*)"$/) do |title|
 	expect(@homepage.alertContent).to include title.to_s

end

Then(/^Close the alert and search "([^"]*)" again I should get (\d+) item$/) do |title, result|
  @homepage.alertConfirm
  expect(@homepage.searchAddItem title).to eq result.to_i
end
