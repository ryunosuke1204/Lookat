class Post < ApplicationRecord
belongs_to :user
has_many :comments
has_one_attached :image

belongs_to :user, optional: true
has_many :favorites, dependent: :destroy 
end
