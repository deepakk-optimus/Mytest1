Given /^I create a new filter of name "(.+?)",type "(.+?)",range"(.+?)"$/ do|name,type,pattern|
	visit AutoDiscoveryPage
	sleep(5)
	on AutoDiscoveryPage do|page|
	page.add_filter(name,type,pattern)
	end
end

Given /^I am on AutoDiscovery Page$/ do
	visit AutoDiscoveryPage
end

Then /^I create new definition of name "(.+?)",schema "(.+?)",control "(.+?)",template "(.+?)"$/ do|name,schema,control,template|
	on AutoDiscoveryPage do|page|
	page.new_definition(name,schema,control,template)
	sleep(5)
	end
end

Then /^I search for host by discovery definition "(.+?)",mode "(.+?)",filter "(.+?)"$/ do|defname,defmode,filter|
	on AutoDiscoveryPage do|page|
	page.disc_host
	end
end
	

