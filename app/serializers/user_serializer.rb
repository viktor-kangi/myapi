class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :address, :password_digest
end
