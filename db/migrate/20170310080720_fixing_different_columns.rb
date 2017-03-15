class FixingDifferentColumns < ActiveRecord::Migration[5.0]
  def change
  	change_column :tippies, :cost, :decimal, null: true
  	change_column :tippies, :cost_cents, :integer, null: true
  	change_column :tippies, :tip_cents, :integer, null: true
  end
end
