class User < ApplicationRecord
    has_many :user_memes
    has_many :memes, through: :user_memes
end