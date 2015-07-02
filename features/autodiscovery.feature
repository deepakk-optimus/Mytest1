Feature: Autodiscovery page
@s1
Scenario: Add Filter
Given I create a new filter of name "Testhost4",type "include",range"172.152.105.144"
Then I wait for 5 seconds

@s2
Scenario: Add new definition
Given I am on AutoDiscovery Page
Then I create new definition of name "Testhost2",schema "GroundWork-Discovery-Pro",control "Auto-Commit",template "GroundWork-Default-Pro"
Then I wait for 5 seconds

@s3
Scenario: Adding Hosts
Given I am on AutoDiscovery Page
Then I search for host by discovery definition "Testhost2",mode "Auto-Commit",filter "Testhost4"
Then I wait for 5 seconds
