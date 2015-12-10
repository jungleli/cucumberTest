class HomePage < SitePrism::Page
	set_url '/'

	element :keyword, '#search'
	element :totalNum, '#total'
	element :addItem, '#add'
	element :addBookmark, '#AddBookmark'
	element :inputTitle, '#inputTitle'
	element :inputUrl, '#inputURL'
	elements :deleteItems, '.delete'

	def search content
		keyword.set content
		sleep 1
	end

	def searchResult
		sleep 2
		totalNum.text.to_i
	end

	def addBookmark title,url
		addItem.click
		inputTitle.set title
		inputUrl.set url
		addBookmark.click
		sleep 2
	end

	def addResult
		@session.driver.browser.switch_to.alert.text
		puts @session.driver.browser.switch_to.alert.text

		# @session.driver.browser.switch_to.alert.accept
	end

	def getDelID
		"Get ID of which will to delete============="
		deleteItems[0]['rel']
	end

	def searchItemByDelID
		0
		# deleteItems.html().contain(getDelID).length
	end

	def delBookmarkConfirm
		deleteItems[0].click
		sleep 3
		page.driver.browser.switch_to.alert.accept
		sleep 10
	end

	def delBookmarkRefuse
		deleteItems[0].click
		page.driver.browser.switch_to.alert.dismiss
		sleep 1
	end



	
end
