class Todo < ActiveRecord::Base

	def complete!
		touch(:completed_at)
	end

	def incomplete!
		update!(completed_at: nil)
	end

	def completed?
		completed_at?		# rails generated method
	end

end
