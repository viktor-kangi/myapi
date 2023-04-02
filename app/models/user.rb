class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :address, presence: true
    validates :password, presence: true

    has_many :orders
    has_many :order_items, through: :orders
end
