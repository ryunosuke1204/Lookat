class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates :name, presence: true
validates :profile, presence: true
has_many :posts
has_many :favorites

def favorite_find(post_id)
  favorites.where(post_id: post_id).exists?
end
end
