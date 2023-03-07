class Food < ApplicationRecord

  # Asociaciones
  belongs_to :restaurant

  # Validaciones
  validates :name, :description, :price, :available, presence: true

  # Active Record
  has_one_attached :photo

end
