require "rails_helper"

feature "User creates a new Todo" do

	scenario "successfully" do
		visit root_path
		click_on "New Todo"

		fill_in "Title", with: "Buying Milk"
		click_on "Submit"

		expect(page).to have_css ".todos li", text: "Buying Milk"
	end
	
end