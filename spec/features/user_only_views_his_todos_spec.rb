require "rails_helper"

feature "User views todos" do

	scenario "doesn't see others' todos" do
		Todo.create(email: "user@example.com", title: "TDD on Rails")

		sign_in_as "other_user@example.com"
		expect(page).not_to have_css ".todos li", text: "TDD on Rails"
	end

end