class CreateTippies < ActiveRecord::Migration[5.0]
  def change
    create_table :tippies do |t|
      t.float :tip
      t.decimal :cost

      t.timestamps
    end
  end
end
