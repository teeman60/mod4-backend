class Meme < ApplicationRecord
    has_many :user_memes
    has_many :users, through: :user_memes
end
