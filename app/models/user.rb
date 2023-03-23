class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Ascociaciones
  has_many :restaurants # habilita el metodo .restaurants que puedo aplicarle un each


  # Active Record
  has_one_attached :photo

  # user = User.first
  # user.restaurants.each do |restaurant|

  # Validaciones

end
