class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Ascociaciones
  has_many :restaurants # habilita el metodo .restaurants que puedo aplicarle un each

  # user = User.first
  # user.restaurants.each do |restaurant|

  # Validaciones
  validates :name, :address, presence: true

end
