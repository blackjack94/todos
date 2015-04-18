require "rails_helper"

feature "User marks a Todo as completed" do
	task = "Lumosity Training"

	scenario "successfully" do
		sign_in_as "person@example.com"

		create_todo(task)
		click_on "Mark as Completed"

		expect(page).to display_completed_todo(task)
	end

end