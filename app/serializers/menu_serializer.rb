class MenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url
  has_many :menu_items, dependent: :destroy
end
