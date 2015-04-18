require "rails_helper"

feature "User marks a Todo as incomplete" do
	task = "Read Book"

	scenario "successfully" do
		sign_in_as "person@email.com"

		create_todo task

		click_on "Mark as Completed"
		click_on "Mark as Incomplete"

		expect(page).to display_todo(task)
		expect(page).not_to display_completed_todo(task)
	end

end
