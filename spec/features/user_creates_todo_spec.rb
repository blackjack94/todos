require "rails_helper"

feature "User creates a new Todo" do
	task = "Buying Milk"

	scenario "successfully" do
		sign_in_as "person@email.com"

		create_todo(task)

		expect(page).to display_todo(task)
	end
	
end