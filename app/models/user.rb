class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :user_memes
    has_many :memes, through: :user_memes
end