Given(/^user visit sendit$/) do
require 'capybara/dsl'
Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'https://senditdev.metapack.com/users/sign_in'
class WebRobot
include Capybara::DSL
def go
visit '/'
fill_in "User ID", :with => "who@email.com"
click_button "Sign in"
# ... etc
puts('press any key to finish')
gets
end
end

WebRobot.new.go
end
end

When(/^I enter username$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see wesite$/) do
  pending # express the regexp above with the code you wish you had
end