class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :description, :price, :menu_id
end
