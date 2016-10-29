class CreateUserOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :user_orders do |t|
      t.integer :user_id
      t.integer :order_id
    end
    add_index :user_orders, :user_id
    add_index :user_orders, :order_id
  end
end
