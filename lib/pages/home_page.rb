class HomePage < SitePrism::Page
	set_url '/'

	element :keyword, '#search'
	element :totalNum, '#total'
	element :addItem, '#add'
	element :inputTitle, '#inputTitle'
	element :inputUrl, '#inputURL'
	element :addBookmark, '#AddBookmark'
	elements :deleteItems, '.delete'
	elements :delResult, "[title='Test Title To Delete']"
	elements :addResult, "[title='Test Title To Add']"


	def search content
		keyword.set content
		sleep 1
	end

	def searchResult
		sleep 2
		totalNum.text.to_i
	end

	def addBookmarks title, url
		addItem.click
		sleep 3
		inputTitle.set title
		inputUrl.set url
		sleep 3
		addBookmark.click
		sleep 2
	end

	def searchDelItem byTitle
		puts "==================searchDelItem"
		delResult.length
	end

	def searchAddItem byTitle
		puts "==================searchAddItem"
		addResult.length
	end
	

	def clickToDelBookmark byTitle
		puts "===================clickToDelBookmark"		
		delResult[0].click
		sleep 3
	end

	def clickToDelNewBookmark byTitle
		puts "===================clickToDelBookmark"		
		addResult[0].click
		sleep 3
	end

	def alertConfirm
		puts "===================alertConfirm"
		page.driver.browser.switch_to.alert.accept
		sleep 1
	end

	def alertRefuse
		puts "===================alertRefuse"
		page.driver.browser.switch_to.alert.dismiss
		sleep 1
	end

	def  alertContent
		puts "====================alertContent"
		page.driver.browser.switch_to.alert.text
	end
	
end
