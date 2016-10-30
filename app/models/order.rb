class Order < ApplicationRecord
  has_many :user_orders
  has_many :users, through: :user_orders
  has_many :meals
  validates :restaurant_name, presence: true
end
