# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'belgian' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian' }
mac_donalds = { name: "MacDonald's", address: "1 MacDonald Ave, London E2 6PQ", category: 'japanese' }
hot_tomato = { name: "Hot Tomato", address: "1 Hot Tomato Drive, London E3 6PQ", category: 'french' }
kopitiam = { name: "Kopitiam", address: "1 Kopitiam Road, London E4 6PQ", category: 'chinese' }

[dishoom, pizza_east, mac_donalds, hot_tomato, kopitiam].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
