class Food < ApplicationRecord

  # Asociaciones
  belongs_to :restaurant

  # Validaciones
  validates :name, :description, :price, :available, presence: true

end
