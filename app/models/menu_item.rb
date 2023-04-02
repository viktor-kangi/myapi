class MenuItem < ApplicationRecord
    has_many :orders
    belongs_to :menu
end
