class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :image_url
      t.integer :order_id
      t.integer :subtotal

      t.timestamps
    end
  end
end
