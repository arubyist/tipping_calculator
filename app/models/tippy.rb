class Tippy < ApplicationRecord

	validates :tip, presence: true
	validates :cost, presence: true

	def calculation_of_total_cost 
		cost + (tip * cost)
	end

end
