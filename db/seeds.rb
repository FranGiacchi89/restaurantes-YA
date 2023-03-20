# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"

# Food.destroy_all
# Restaurant.destroy_all
# User.destroy_all

# user1 = User.create!(
#   email: "fgiacchi89@gmail.com",
#   password: "123456"
# )
#   file = URI.open("https://avatars.githubusercontent.com/u/96851608?v=4")
#   user1.photo.attach(io: file, filename: "fran.png", content_type: "image/png")
#   user1.save

# user2 = User.create!(
#   email: "henrich@gmail.com",
#   password: "123456"
# )
#   file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1664024882/gzorjnohuxm9iednlx8j.jpg")
#   user2.photo.attach(io: file, filename: "gaston.png", content_type: "image/png")
#   user2.save

#   restaurant1 = Restaurant.create!(
#     name: "Don Julio",
#     address: "Segurola y Havana",
#     user_id: user1.id
#   )

#   restaurant2 = Restaurant.create!(
#     name: "La Parolaccia",
#     address: "Havana",
#     user_id: user1.id
#   )

#   restaurant3 = Restaurant.create!(
#     name: "El Preferido",
#     address: "Libertador",
#     user_id: user2.id
#   )

#   food1 = Food.create!(
#     name: "Milapo",
#     description: "Napolitana",
#     price: 10,
#     available: true,
#     restaurant_id: restaurant1.id
#   )

#   food2 = Food.create!(
#     name: "Ojo de bife",
#     description: "carne premium",
#     price: 15,
#     available: true,
#     restaurant_id: restaurant1.id
#   )

#   food3 = Food.create!(
#     name: "Pizza",
#     description: "Napolitana",
#     price: 9,
#     available: true,
#     restaurant_id: restaurant2.id
#   )
require "open-uri"
if Rails.env.development?
 puts "Deleting data"
 Food.destroy_all
 Schedule.destroy_all
 Restaurant.destroy_all
 User.destroy_all
 puts "Data deleted successfully"
end

puts "Creating users"
user1 = User.create!(
  name: "Francisco",
  address: "Av. Las Condes 345",
  email: "fgiacchi89@gmail.com",
  password: "123456")
  file = URI.open("https://avatars.githubusercontent.com/u/96851608?v=4")
  user1.photo.attach(io: file, filename: "vicky.png", content_type: "image/png")
  user1.save
  puts "#{user1.name} created successfully"

user2 = User.create!(
  name: "Gaston",
  address: "Av. Las Condes 345",
  email: "henrich@gmail.com",
  password: "123456")
  file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1664024882/gzorjnohuxm9iednlx8j.jpg")
  user2.photo.attach(io: file, filename: "steve.png", content_type: "image/png")
  user2.save
  puts "#{user2.name} created successfully"

user3 = User.create!(
  name: "Fernando",
  address: "Av. Las Condes 345",
  email: "fernando@gmail.com",
  password: "123456")
  file = URI.open("https://avatars.githubusercontent.com/u/108149366?v=4")
  user3.photo.attach(io: file, filename: "fdo.png", content_type: "image/png")
  user3.save
  puts "#{user3.name} created successfully"

puts "Creating restaurants"
restaurant1 = Restaurant.create!(
  name: "La carnecita roja y el lomo feroz",
  address: "Av. La Florida 3567",
  specialty: "Carne asada",
  description: "La mejor carne asada de la ciudad, ven a disfrutar con nosotros todas las variedades de platos",
  user: user1)
  file = URI.open("https://www.eltiempo.com/files/image_640_428/uploads/2022/11/11/636ec9b036dfd.png")
  restaurant1.photo.attach(io: file, filename: "r1.png", content_type: "image/png")
  restaurant1.save

restaurant2 = Restaurant.create!(name: "Los tres cerditos al spiedo", address: "Av. Bernardo O'higgins 1267",
specialty: "Carnes premium", description: "Deleita a tu paladar con las mejores carnes premium de cerdo, vacuno
y guayu", user: user1)
file = URI.open("https://foodandpleasure.com/wp-content/uploads/2018/06/piantao-3.jpg")
restaurant2.photo.attach(io: file, filename: "r2.png", content_type: "image/png")
restaurant2.save
restaurant3 = Restaurant.create!(name: "  我是王- Yo soy wang ", address: "Av. Recoleta 3500,
Santiago", specialty: "Comida China", description: "Comida tradicional china cantonesa", user:
user2)
file = URI.open("https://static.mujerhoy.com/www/multimedia/201802/14/media/cortadas/mejores-restaurantes-chinos-madrid-autentica-comida-china-buda-feliz-kFhD--1351x900@MujerHoy.jpg")
restaurant3.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
restaurant3.save
puts "Creating foods"

food1 = Food.create!(name: "Biffe chorizo", description: "Carne premium, asada al carbon", price: 14500, available:
true, restaurant: restaurant1)
file = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/ZQFHLTvwgTcfwd6nZ-1200-1200.webp")
food1.photo.attach(io: file, filename: "f1.png", content_type: "image/png")
food1.save

food2 = Food.create!(name: "Cerdo al spiedo", description: "Crujiente y sabrosa carne de cerdo cocinada a fuego
lento", price: 18500, available: true, restaurant: restaurant2)
file = URI.open("https://d1mm7fnxb6z2bq.cloudfront.net/media/images/spiedo1.height-500.jpg")
food2.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food2.save

food3 = Food.create!(name: "Carne mongoliana", description: "Carne, cebollin, aji, soya y condimentos", price:
6500, available: true, restaurant: restaurant3)
file = URI.open("https://estag.fimagenes.com/imagenesred/10656300.jpg")
food3.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food3.save

food4 = Food.create!(name: "Milanesa Napolitana", description: "Milanesa estilo napolitano con papas fritas", price:
6500, available: true, restaurant: restaurant1)
file = URI.open("https://resizer.glanacion.com/resizer/-Kfm4ZQA7LC7aAw_1pOgijCKHSE=/1200x800/smart/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/FK6KNKYMOZHJVJKZCSTRUYEZ3Y.jpg")
food4.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food4.save

food5 = Food.create!(name: "Spaghetti al pesto", description: "Spaghetti al dente con pesto genovese", price:
6500, available: true, restaurant: restaurant1)
file = URI.open("https://www.lavanguardia.com/files/og_thumbnail/uploads/2020/05/29/5ed11fb61d750.jpeg")
food5.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food5.save

food6 = Food.create!(name: "Pizza Margherita", description: "Pizza a la piedra con salsa de tomate, muzzarella y albahaca", price:
6500, available: true, restaurant: restaurant2)
file = URI.open("https://img2.rtve.es/i/?w=1600&i=1645806144885.jpg")
food6.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food6.save

food7 = Food.create!(name: "Rabas", description: "Porcion de rabas con limon", price:
6500, available: true, restaurant: restaurant2)
file = URI.open("https://vinomanos.com/wp-content/uploads/2021/01/Rabas.jpg")
food7.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food7.save

food8 = Food.create!(name: "Pad thai", description: "Pad thai con salsa de soja especial", price:
6500, available: true, restaurant: restaurant3)
file = URI.open("https://www.feastingathome.com/wp-content/uploads/2016/04/pad-thai-2.jpg")
food8.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food8.save

food9 = Food.create!(name: "Ribs de cerdo a la barbacoa", description: "Ribs de cerdo con slasa baracoa y papas rellenas", price:
6500, available: true, restaurant: restaurant3)
file = URI.open("https://i.ytimg.com/vi/RVTkuuQpiFg/maxresdefault.jpg")
food9.photo.attach(io: file, filename: "21.png", content_type: "image/png")
food9.save
