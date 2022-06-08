class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :password_confirmation, presence: true
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
end
