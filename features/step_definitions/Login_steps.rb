Given /^I navigate to groundwork machine$/ do
	on LoginPage do |page|
	page.Login_User("admin","admin")
	end
end

Then /^I wait for 5 seconds$/ do
sleep(5)
end
