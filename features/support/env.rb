require 'capybara'
require 'capybara/cucumber'
require 'pry'

require 'require_all'
# require_all 'lib'



Capybara.register_driver :selenium do |app|
	options = {
		browser: :firefox 
	}
  Capybara::Selenium::Driver.new(app,options)
end

Capybara.default_driver = :selenium
# Selenium::WebDriver::Chrome::Service.executable_path = 'D:\download\chrome\chromedriver_win32\chromedriver.exe'
Capybara.app_host = "http://jungleli.github.io/bookmarks-Search/"