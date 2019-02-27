# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


italian_place = Restaurant.new(name: "Italian Food", address: "Barcelona", category: "italian")
italian_place.save
belgian_place = Restaurant.new(name: "Belgian Food", address: "Madrid", category: "belgian")
belgian_place.save
chinese_place = Restaurant.new(name: "Chinese Food", address: "Madrid", category: "chinese")
chinese_place.save
japanese_place = Restaurant.new(name: "japanese Food", address: "Madrid", category: "japanese")
japanese_place.save
french_place = Restaurant.new(name: "french Food", address: "Madrid", category: "french")
french_place.save

