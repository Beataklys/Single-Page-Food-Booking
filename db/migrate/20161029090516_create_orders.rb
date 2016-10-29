class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :restaurant_name
      t.string :order_status

      t.timestamps
    end
  end
end
