class User < ApplicationRecord
  has_many :lessons
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
