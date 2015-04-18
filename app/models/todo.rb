class Todo < ActiveRecord::Base

	def complete!
		touch(:completed_at)
	end

	def completed?
		completed_at?		# rails generated method
	end

end
