class Schedule < ApplicationRecord

  # Asociaciones
  belongs_to :restaurant

  # Validaciones
  validates :day, :open_at, :close_at, presence: true

end
