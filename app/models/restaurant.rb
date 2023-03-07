class Restaurant < ApplicationRecord

  # Asociaciones
  belongs_to :user
  has_many :schedules
  has_many :foods

  # restaurant = Restaurant.find(1)
  # restaurant.foods.each do |food|
  # restaurant.schedules.each do |schedule|

  # Validaciones
  validates :name, :address, presence: true

end
