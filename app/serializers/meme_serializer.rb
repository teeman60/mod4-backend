class MemeSerializer < ActiveModel::Serializer
    attributes :id, :name, :url, :likes, :category
    has_many :user_memes
    has_many :users, through: :user_memes
end
