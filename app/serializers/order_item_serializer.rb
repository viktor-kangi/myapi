class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :quantity, :image_url, :order_id, :subtotal
end
