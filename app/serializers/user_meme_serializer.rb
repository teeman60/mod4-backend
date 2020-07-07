class UserMemeSerializer < ActiveModel::Serializer
    attributes :id
    belongs_to: :user
    belongs_to: :meme
end
