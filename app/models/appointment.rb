class Appointment < ApplicationRecord

	validates :title, presence: true

	def all_day_event?
		self.start == self.start.midnight && self.end == self.end.mignigh ? true : false
	end
	
end
