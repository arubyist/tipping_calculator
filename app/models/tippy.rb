class Tippy < ApplicationRecord

	def calculation_of_total_cost 
		cost + (tip * cost)
	end

end
