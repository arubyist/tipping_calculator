class FixingColumns < ActiveRecord::Migration[5.0]
  def change
  	change_column :tippies, :tip, :float, null: true
  end
end
