Given(/^Open the homepage$/) do
	# visit 'http://jungleli.github.io/bookmarks-Search/'
	visit '/'
	# sleep 5
end

Given(/^Search "([^"]*)"$/) do | search_content |
	fill_in 'search', with: search_content
	sleep 2
end

Given(/^Have (\d+) result$/) do | expect |
	sleep 1
	result = all('.list li')
	sleep 1
	expect(result.length).to eq expect.to_i
end
