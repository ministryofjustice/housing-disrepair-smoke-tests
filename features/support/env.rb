require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.register_driver(:chrome_headless) do |app|
  args = %w[disable-gpu no-sandbox]
  args << 'headless' unless ENV['SHOW_BROWSER']

  options = Selenium::WebDriver::Chrome::Options.new(args: args)

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.configure do |config|
  config.default_driver = :chrome_headless
  config.app_host = ENV['HOST_URL']
  config.run_server = false
end
