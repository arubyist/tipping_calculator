class Tippy < ApplicationRecord

	validates :tip, presence: true
	validates :cost, presence: true

	TIP_CHOICES = { "10%" => ".10", "20%" => ".20", "30%" => ".30", "40%" => ".40", "50%" => ".50", 
	                "60%" => ".60", "70%" => ".70", "80%" => ".80", "90%" => ".90" }


	
	def calculation_of_total_cost 
		cost + (tip * cost)
	end



end
