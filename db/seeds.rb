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
  description: "Carne premium, asada a la leña. El bife de chorizo es un corte de carne de res muy popular que se obtiene de la zona lumbar del animal, específicamente de la parte cercana a la costilla, y se caracteriza por tener una forma alargada y ovalada. La carne del bife de chorizo es jugosa, tierna y tiene un sabor intenso y rico en grasas intramusculares que la hacen muy sabrosa.",
  price: 14500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://tofuu.getjusto.com/orioneat-prod-resized/ZQFHLTvwgTcfwd6nZ-1200-1200.webp")
  food1.photo.attach(io: file, filename: "f1.png", content_type: "image/png")
  food1.save

food2 = Food.create!(
  name: "Cerdo al spiedo",
  description: "Crujiente y sabrosa carne de cerdo cocinada a fuego lento. Esta es una preparación tradicional que se realiza asando un cerdo entero sobre una parrilla rotativa. Ofrecemos diferentes opciones y acompañamientos que complementen el sabor del plato principal.",
  price: 18500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://d1mm7fnxb6z2bq.cloudfront.net/media/images/spiedo1.height-500.jpg")
  food2.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food2.save

food3 = Food.create!(
  name: "Carne mongoliana",
  description: "La carne mongoliana es un plato de la cocina de Mongolia y de algunas regiones de China. Se trata de una preparación de carne de res tierna y jugosa, marinada y cocinada en una salsa agridulce y especiada. Es una carne tierna y jugosa, con un sabor agridulce y ligeramente picante, que se puede servir con arroz, fideos o vegetales salteados.",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://img.freepik.com/foto-gratis/delicioso-goulash-listo-cenar_23-2149370900.jpg?w=1480&t=st=1679494169~exp=1679494769~hmac=745b4575a3843c70e89f3e2f32c0d237c6272977358295631d8e3f5acac4a510")
  food3.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food3.save

food4 = Food.create!(
  name: "Milanesa Napolitana",
  description: "La milanesa se prepara a partir de filetes de carne de res finos, que se sazonan con sal, pimienta y ajo en polvo, se pasan por huevo batido y pan rallado, y se fríen en aceite caliente hasta que queden dorados y crujientes.Una vez fritas, las milanesas se cubren con salsa de tomate casera o comprada, se colocan rebanadas de jamón y queso sobre la salsa y se gratinan en el horno hasta que el queso se derrita y se dore.",
  price: 6500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://resizer.glanacion.com/resizer/-Kfm4ZQA7LC7aAw_1pOgijCKHSE=/1200x800/smart/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/FK6KNKYMOZHJVJKZCSTRUYEZ3Y.jpg")
  food4.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food4.save

food5 = Food.create!(
  name: "Fetuccine al pesto",
  description: "El fetuccine al pesto es un plato de pasta que se originó en la región de Liguria, en Italia. Consiste en una pasta larga y plana, como el fetuccine, cubierta con una salsa hecha a base de albahaca, ajo, piñones, queso parmesano y aceite de oliva. La pasta se cocina en agua salada hasta que esté al dente, se escurre y se mezcla con la salsa pesto caliente.",
  price: 6500,
  available: true,
  restaurant: restaurant1)
  file = URI.open("https://img.freepik.com/foto-gratis/fettuccine-pasta-brocoli-pollo-salsa-cremosa-especias-pimienta-vista-lateral_141793-3540.jpg?w=1480&t=st=1679491732~exp=1679492332~hmac=a67a851c01e22fdd349b5b58a4e920547a355f73e59e261707938058d9be6dc6")
  food5.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food5.save

food6 = Food.create!(
  name: "Pizza Margherita",
  description: "La pizza margherita es un tipo de pizza originario de Nápoles, Italia. Se elabora con una base de masa de pizza fina y crujiente, cubierta con salsa de tomate, mozzarella fresca y hojas de albahaca fresca.La pizza margherita se termina con hojas frescas de albahaca, que aportan un sabor y aroma fresco y distintivo.",
  price: 6500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://img.freepik.com/foto-gratis/pizza_144627-39491.jpg?w=1480&t=st=1679491563~exp=1679492163~hmac=22c6f93188d28106b71ddf37939e652fa207af0151ebdab4f50636f9619b8882")
  food6.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food6.save

food7 = Food.create!(
  name: "Rabas",
  description: "Las rabas con limón son un plato típico de la cocina de la región del Río de la Plata, especialmente en Argentina y Uruguay. Consiste en anillos de calamar rebozados y fritos, servidos con una rodaja de limón fresco para exprimir por encima. Las rabas se preparan cortando los calamares en anillos y luego se pasan por una mezcla de harina y condimentos como pimentón, ajo y sal. Después, se fríen en aceite caliente hasta que estén dorados y crujientes.",
  price: 6500,
  available: true,
  restaurant: restaurant2)
  file = URI.open("https://vinomanos.com/wp-content/uploads/2021/01/Rabas.jpg")
  food7.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food7.save

food8 = Food.create!(
  name: "Pad thai",
  description: "El Pad Thai es un plato muy popular de la cocina tailandesa que consiste en fideos de arroz salteados con huevo, tofu, brotes de soja, cebolla, cacahuetes y otros ingredientes. La preparación comienza remojando los fideos de arroz en agua caliente hasta que estén suaves. Luego, se saltean los ingredientes en una sartén o wok con un poco de aceite de cacahuete, comenzando con la cebolla y el tofu. El plato se sirve caliente, adornado con cacahuetes picados, cilantro fresco y una rodaja de lima para darle un toque de frescura.",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://www.feastingathome.com/wp-content/uploads/2016/04/pad-thai-2.jpg")
  food8.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food8.save

food9 = Food.create!(
  name: "Ribs de cerdo a la barbacoa",
  description: "Las costillas de cerdo a la barbacoa son una deliciosa especialidad culinaria de la cocina estadounidense. Consisten en costillas de cerdo marinadas y cocidas lentamente en una salsa de barbacoa, que les da un sabor dulce y ahumado. Esta deliciosa carne se acompaña de papas rellenas",
  price: 6500,
  available: true,
  restaurant: restaurant3)
  file = URI.open("https://i.ytimg.com/vi/RVTkuuQpiFg/maxresdefault.jpg")
  food9.photo.attach(io: file, filename: "21.png", content_type: "image/png")
  food9.save
