class MonetizeTippy < ActiveRecord::Migration[5.0]
  def change
  	add_monetize :tippies, :cost
  	add_monetize :tippies, :tip
  end
end
