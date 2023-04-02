class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :order_items_id, :total
end
