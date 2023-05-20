# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
le_petit_parc = { name: 'Le Petit Parc', address: '14 Rue de Thann, 75017, Paris', phone_number: '0789887221', category: 'french' }
pizza_east =  { name: 'Pizza East', address: "56A Shoreditch High St, London E1 6PQ", phone_number: '0102030405', category: 'french' }
le_coude_fou = { name: 'Le Coude Fou', address: '12 rue du Bourg Tibourg, 75004 Paris', phone_number: '0142771518', category: 'italian' }
little_cafe = { name: 'Little Café', address: '10 rue du Bourg Tibourg, 75004 Paris', phone_number: '0142771516', category: 'chinese' }
la_menagerie = { name: 'La Ménagerie', address: 'Boulevard de l Hôpital, 75013 Paris', phone_number: '0142771538', category: 'chinese' }

[le_petit_parc, pizza_east, le_coude_fou, little_cafe, la_menagerie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
