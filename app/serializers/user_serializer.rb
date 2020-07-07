class UserSerializer < ActiveModel::Serializer
    attributes :id, :memes
    has_many :user_memes
    has_many :memes, through: :user_memes
end
