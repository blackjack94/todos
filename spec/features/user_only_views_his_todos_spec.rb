require "rails_helper"

feature "User views todos" do
	task = "TDD on Rails"

	scenario "doesn't see others' todos" do
		Todo.create(email: "user@example.com", title: task)

		sign_in_as "other_user@example.com"

		expect(page).not_to display_todo(task)
	end

end