class ChangeColumnNull < ActiveRecord::Migration[5.0]
  def change
  	change_column_null :tippies, :cost, false
  	change_column_null :tippies, :tip, false
  end
end
