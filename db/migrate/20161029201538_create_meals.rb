class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :dish_name
      t.float :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
