class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
has_many :posts
has_many :comments
has_many :favorites, dependent: :destroy
end
