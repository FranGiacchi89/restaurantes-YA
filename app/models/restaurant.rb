class Restaurant < ApplicationRecord
  include PgSearch::Model
  # Asociaciones
  belongs_to :user
  has_many :schedules
  has_many :foods

  # restaurant = Restaurant.find(1)
  # restaurant.foods.each do |food|
  # restaurant.schedules.each do |schedule|

  # Validaciones
  validates :name, :address, presence: true
  validates :name, length: { minimum: 1, maximum: 500 }

  # Active Record
  has_one_attached :photo

  # pg_search
  pg_search_scope :search_all_restaurants,
  # pasar el nombre de las columnas que estoy buscando (del schema)
  against: [ :name, :address, :description, :specialty ],
  # este hash indica que puedo mezclar cosas (palabras a medio completar)
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
