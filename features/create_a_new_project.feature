Feature: Create and save a new project with some initial options
	In order to start hooking up wireframe sketches
	As a logged in user
	I want to setup a new app prototype project
	
	Scenario: Start creating a new project from user dashboard
		Given I am logged in
			And I am on my account dashboard page
		When click "Create new project" button
		Then I should see the project creation screen
		
	Scenario: Start creating a new project from site global nav
		Given I am logged in
			And I am on my account dashboard page
		When select "Create new project" from user settings in site navigation dropdown
		Then I should see the project creation screen

	Scenario: Start creating a new project from site global nav
		Given I am logged in
			And I am on the project creation page
		When I fill in the project creation fields correctly
			And I submit the form
		Then I should see "New project created successfully"
			And I should see the newly created project's first screen's edit page

	Scenario: Start creating a new project from site global nav
		Given I am logged in
			And I am on the project creation page
		When I make errors filling in the project creation fields
			And I submit the form
		Then I should see "New project created successfully"
			And I should still see the project creation page
			
