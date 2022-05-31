# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all

# User.create(
#   first_name: 'Karl',
#   last_name: 'Wagon',
#   email: 'me@me.com',
#   password: '123456',
#   password_confirmation: '123456'
# )
require 'open-uri'
require 'faker'

Flat.destroy_all
uris = %w[
  https://a0.muscache.com/im/pictures/miso/Hosting-568213224844258690/original/4b3dcee9-e387-4a32-8a12-843e3bc8d369.jpeg
  https://a0.muscache.com/im/pictures/4378afc0-e98c-4489-a614-4a93da84afeb.jpg
  https://a0.muscache.com/im/pictures/cf86b3bb-f1ff-4ce8-9b10-fe5e553d4328.jpg
  https://a0.muscache.com/im/pictures/miso/Hosting-45141257/original/eb1dc555-4a7a-42ea-b845-0669293092bc.jpeg
  https://a0.muscache.com/im/pictures/b071b346-09b2-4862-b3ca-a03499831ac1.jpg?
  https://a0.muscache.com/im/pictures/3340710b-cdb7-4483-a1be-4ba0e895d064.jpg
  https://www.i-live-koeln.de/fileadmin/bilder/apartments/Komfort_1.jpg
  https://cf.bstatic.com/xdata/images/hotel/max1024x768/72282092.jpg?k=5eeba7eb191652ce0c0988b4c7c042f1165b7064d865b096bb48b8c48bf191b9&o=&hp=1
  https://media.adinahotels.com/media/filer_public_thumbnails/filer_public/c8/92/c892ac75-ec96-49ae-8030-f488c5956fd9/adina-apartment-hotel-auckland-britomart-three-bedroom-premier-apartment-lounge-room-01-2017-450x300.jpg__450x300_q85_subsampling-2.jpg
  https://www.residenz-am-zwinger.de/wp-content/uploads/2021/01/auswahl-2-zimmer-apartment.jpg
  https://www.apartment-s.at/tl_files/Bilder/Bildergalerie_6_2014/wae14_0062.jpg
  https://static.budgetplaces.com/establishment/55/86/28655/1.jpg
]
titles = [
  "Casa Lucia - Pool-Villa",
  "Casa Mech",
  "Lagoon front house",
  "Hotel Casa corazón Bacalar",
  "Casa del Solar Centro Cozumel",
  "Villas el Jardín",
  "Apartment Krymska",
  "Berghain",
  "Apartment am Rhein",
  "2 Bedrooms + Netflix",
  "Schönes Zimmer im Kranhaus",
  "Technopalast"
]

cities = %w[
  Bacalar
  Holbox
  Cozumel
  Bacalar
  Cozumel
  Holbox
  Prague
  Berlin
  Cologne
  Bratislava
  Cologne
  Berlin
]

streets = [
  "Av 1 590, 77930 Bacalar, Q.R., Mexiko",
  "Playa Punta mosquito, 77310 Holbox, Q.R., Mexiko",
  "5ta Av. N° 280 entre calles 4 y, Calle 6 Nte, Centro, 77600 San Miguel de Cozumel, Q.R., Mexiko",
  "BLV COSTERO NORTE #1202 ESQUINA CALLE 38, 77930 Bacalar, Q.R., Mexiko",
  "5ta Av. N° 280 entre calles 4 y, Calle 6 Nte, Centro, 77600 San Miguel de Cozumel, Q.R., Mexiko",
  "Playa Punta mosquito, 77310 Holbox, Q.R., Mexiko",
  "Hradčany, 119 08 Prague 1, Tschechien",
  "Am Wriezener bhf, 10243 Berlin",
  "Domkloster 4, 50667 Köln",
  "Alžbety, Bezručova 2, 811 09 Bratislava, Slowakei",
  "Domkloster 4, 50667 Köln",
  "Am Wriezener bhf, 10243 Berlin"
]

descriptions = [
  "Casa Lucía es una propiedad con dos hermosas villas ubicado dentro de la selva maya y frente a la laguna de Bacalar.",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "Este lugar es ideal para los que buscan tranquilidad y belleza, rodeados de un entorno natural, pero al mismo tiempo desean confort y comodidad.",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "The main room receives afternoon sun and overlooks the cobbled street with its café life. Krymska tram stop 200m",
  "recently reconstructed one bedroom first floor (no lift) apartment in 1893 building located in the historic neighbourhood of Vrsovice just 3km from Old Town Square (Staromestka Namesti)",
  "The interior design combines original period features (doors, windows & parquet floor) with modern elements and is furnished with original & reproduction early 20th century pieces & light fittings",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us",
  "The apartment is located in the main floor of a big property in the centre of Holbox. It is a very comfortable 1 bedroom apartment, very specious, well kept, and equipped for long and short stays. We are committed to making sure our guest feel right at home and enjoy a unique experience with us"
]

uris.each_with_index do |uri, i|
  file = URI.open(uri)

  flat = Flat.new(
    user: User.last,
    title: titles[i],
    city: cities[i],
    street: streets[i],
    description: descriptions[i],
    price_per_night: rand(50...300)
  )

  flat.photo.attach(
    io: file,
    filename: "image-#{i}",
    content_type: 'image/png'
  )
  flat.save!

  puts "created flat #{i}"
end

puts 'finished'
