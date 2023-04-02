class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :order_item_id
      t.integer :total

      t.timestamps
    end
  end
end
