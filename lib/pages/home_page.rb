class HomePage < SitePrism::Page
	set_url '/'

	element :keyword, '#search'
	elements :results, '.list li'

	def search content
		keyword.set content
		sleep 1
	end

	def result
				sleep 2
		results.length
	end
end
