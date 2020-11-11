# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database now..."
Flat.destroy_all
puts "Database clean ✅"

5.times do 
  Flat.create!(
    name: Faker::Movies::StarWars.planet,
    address: Faker::Address.street_address,
    description: Faker::Quote.yoda,
    price_per_night: rand(50..150),
    number_of_guests: rand(1..5)
  )  
end

puts "Done! Created #{Flat.count} flats."