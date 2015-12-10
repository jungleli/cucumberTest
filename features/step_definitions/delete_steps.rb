When(/^Click delete button to delete the first item and Confirm to delete$/) do 
	puts "======================="
	puts @homepage.getDelID
	@homepage.delBookmarkConfirm
	sleep 3
end

Then(/^Search the item with ID which equals to \%ID\% should get (\d+) result$/) do  | expect |
  	expect(@homepage.searchItemByDelID).to eq expect.to_i
  	puts "确认删除"
	sleep 3
end

When(/^Click delete button to delete the first item and Refuse to delete$/) do 
	@homepage.delBookmarkRefuse
	puts "取消删除"
	sleep 3
end

# Then(/^Search the item with ID which equals to \%ID\% should get (\d+) result$/) do | expect |
#   expect(@homepage.searchItemByDelID).to eq expect.to_i
	
# 	sleep 3
# end



