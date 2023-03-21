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
  description: "¡Bienvenidos al restaurante donde la carne es la estrella! En La Carnecita Roja y El Lomo Feroz nos especializamos en preparar cortes de carne a la parrilla, asegurándonos de que cada bocado sea una experiencia excepcional para nuestros comensales. Ofrecemos una amplia variedad de opciones, incluyendo cortes de res, cerdo, pollo y mariscos, todos ellos seleccionados cuidadosamente para asegurarnos de que son de la mejor calidad.",
  user: user1)
  file = URI.open("https://www.eltiempo.com/files/image_640_428/uploads/2022/11/11/636ec9b036dfd.png")
  restaurant1.photo.attach(io: file, filename: "r1.png", content_type: "image/png")
  restaurant1.save

restaurant2 = Restaurant.create!(
  name: "Los tres cerditos al spiedo",
  address: "Av. Bernardo O'higgins 1267",
  specialty: "Carnes premium",
  description: "Deleita a tu paladar con las mejores carnes premium de cerdo, vacuno y wagyu. Ofrecemos una amplia variedad de cortes de carne premium para satisfacer los paladares más exigentes. Nuestro menú incluye cortes clásicos de carne vacuna, como el bife de chorizo, el ojo de bife y el asado de tira, todos de la más alta calidad y preparados a la parrilla para obtener el mejor sabor y jugosidad. También ofrecemos opciones de carne de cerdo, como costillas y lomo, que son cocinados con diferentes técnicas para asegurar una textura tierna y un sabor excepcional.",
  user: user1)
  file = URI.open("https://foodandpleasure.com/wp-content/uploads/2018/06/piantao-3.jpg")
  restaurant2.photo.attach(io: file, filename: "r2.png", content_type: "image/png")
  restaurant2.save

restaurant3 = Restaurant.create!(
  name: "  我是王- Yo soy wang ",
  address: "Av. Recoleta 3500, Santiago",
  specialty: "Comida China",
  description: "Nuestros platos se caracterizan por ser ligera, suave y aromática, con énfasis en los sabores frescos y naturales de los ingredientes. Contamos con una gran variedad de platos en su menú, desde dim sum (pequeños bocados al vapor) hasta platos principales como el cerdo agridulce, el pollo con almendras, el arroz frito, el tofu salteado, entre otros. También suelen incluir platos de mariscos, sopas y postres.",
  user: user1)
  file = URI.open("https://static.mujerhoy.com/www/multimedia/201802/14/media/cortadas/mejores-restaurantes-chinos-madrid-autentica-comida-china-buda-feliz-kFhD--1351x900@MujerHoy.jpg")
  restaurant3.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
  restaurant3.save

  restaurant4 = Restaurant.create!(
  name: "La Parolaccia",
  address: "Av. Recoleta 5500",
  specialty: "Comida Asiatica",
  description: "Contamos con platos tradicionales de diferentes países de Asia, como China, Japón, Corea, Tailandia, Vietnam y muchos más. Algunos de nuestros platos más populares  incluyen sushi y sashimi, ramen, pho, curry, dumplings, arroz frito, fideos, ensaladas, rollitos de primavera, y una gran variedad de platos con carne, pollo, pescado, tofu y verduras.",
  user: user2)
  file = URI.open("https://img.freepik.com/foto-gratis/mesa-banquete-aperitivos_144627-18361.jpg?w=1480&t=st=1679436140~exp=1679436740~hmac=8a119b9d7437fa36a2124e9685445333be22fcfca8b621808517c7f8364f50e4")
  restaurant4.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
  restaurant4.save

  restaurant5 = Restaurant.create!(
  name: "Lola Valentina",
  address: "Av. Callao 2500",
  specialty: "Comida Italiana",
  description: "En Lola Valentina te invitamos a disfrutar de la auténtica cocina italiana y probar algunos de los platos más emblemáticos de esta gastronomía mundialmente famosa. Nuestros platos se caracterizan por su simplicidad, frescura y sabor, y somos conocidos por nuestras pastas, pizzas y deliciosos platos de carne y mariscos.",
  user: user1)
  file = URI.open("https://img.freepik.com/foto-gratis/copas-vino-tinto-blanco_140725-1272.jpg?w=1060&t=st=1679436302~exp=1679436902~hmac=f774d3f0f6ca02e6e8b46d845de637700d3825086c1833b0708759e792c9ea4d")
  restaurant5.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
  restaurant5.save

  restaurant6 = Restaurant.create!(
  name: "Tegui",
  address: "Av. Libertador 680",
  specialty: "Comida Gourmet",
  description: "En Tegui ofrecemos una experiencia culinaria de alta calidad y sofisticación. Nuestros chefs utilizan ingredientes de primera calidad y técnicas de cocina avanzadas para crear platos únicos y exquisitos. Además, contamos con un servicio muy profesional y atento, con el objetivo de brindar una experiencia gastronómica inolvidable para los clientes.",
  user: user1)
  file = URI.open("https://img.freepik.com/foto-gratis/chef-macho-poniendo-ensalada-plato_23-2148763188.jpg?w=1480&t=st=1679436595~exp=1679437195~hmac=19b9682c375f641f9a00eebb84a68bb7dce07bb8f43a5fd348c0c9410d90da5e")
  restaurant6.photo.attach(io: file, filename: "r3.png", content_type: "image/png")
  restaurant6.save


puts "Creating foods"

food1 = Food.create!(
  name: "Biffe chorizo",
  description: "Carne premium, asada al carbon",
  price: 14500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/ZQFHLTvwgTcfwd6nZ-1200-1200.webp")
  food1.photo.attach(io: file, filename: "f1.png", content_type: "image/png")
  food1.save

food2 = Food.create!(
  name: "Cerdo al spiedo",
  description: "Crujiente y sabrosa carne de cerdo cocinada a fuego lento",
  price: 18500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://d1mm7fnxb6z2bq.cloudfront.net/media/images/spiedo1.height-500.jpg")
  food2.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food2.save

food3 = Food.create!(
  name: "Carne mongoliana",
  description: "Carne, cebollin, aji, soya y condimentos",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://estag.fimagenes.com/imagenesred/10656300.jpg")
  food3.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food3.save

food4 = Food.create!(
  name: "Milanesa Napolitana",
  description: "Milanesa estilo napolitano con papas fritas",
  price: 6500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://resizer.glanacion.com/resizer/-Kfm4ZQA7LC7aAw_1pOgijCKHSE=/1200x800/smart/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/FK6KNKYMOZHJVJKZCSTRUYEZ3Y.jpg")
  food4.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food4.save

food5 = Food.create!(
  name: "Spaghetti al pesto",
  description: "Spaghetti al dente con pesto genovese",
  price: 6500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://www.lavanguardia.com/files/og_thumbnail/uploads/2020/05/29/5ed11fb61d750.jpeg")
  food5.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food5.save

food6 = Food.create!(
  name: "Pizza Margherita",
  description: "Pizza a la piedra con salsa de tomate, muzzarella y albahaca",
  price: 6500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://img2.rtve.es/i/?w=1600&i=1645806144885.jpg")
  food6.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food6.save

food7 = Food.create!(
  name: "Rabas",
  description: "Porcion de rabas con limon",
  price: 6500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://vinomanos.com/wp-content/uploads/2021/01/Rabas.jpg")
  food7.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food7.save

food8 = Food.create!(
  name: "Pad thai",
  description: "Pad thai con salsa de soja especial",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://www.feastingathome.com/wp-content/uploads/2016/04/pad-thai-2.jpg")
  food8.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food8.save

food9 = Food.create!(
  name: "Ribs de cerdo a la barbacoa",
  description: "Ribs de cerdo con slasa baracoa y papas rellenas",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://i.ytimg.com/vi/RVTkuuQpiFg/maxresdefault.jpg")
  food9.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food9.save
