# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.new(make: "GMC", model: "Vandura", year: 1983, color: "black", seats: 8, location: "1005 Beverly Glen, Bel Air", transmission: "automatic", price: "100"
, photo: "a-team-van_iecmv0", user_id: 1).save

Car.new(make: "Ferrari", model: "Miura", year: 1970, color: "red", seats: 2, location: "Eddie Van Halen's House", transmission: "manual", price: "200",
location: "USA", photo: "miura_rmyj9b", user_id: 2).save

Car.new(make: "Lamborghini", model: "Diablo", year: 1983, color: "Green", seats: 8, location: "Kuroneko Yamato's office", transmission: "automatic", price: "100", photo: "a-team-van_iecmv0", user_id: 3).save

Car.new(make: "Nissan", model: "GTR", year: 2015, color: "Black", seats: 4, location: "", transmission: "automatic", price: "100", photo: "a-team-van_iecmv0", user_id: 3).save
Car.new(make: "", model: "Diablo", year: 1983, color: "Green", seats: 8, location: "Kuroneko Yamato's office", transmission: "automatic", price: "100", photo: "a-team-van_iecmv0", user_id: 4).save
Car.new().save
Car.new().save


 t.string   "name"
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "color"
    t.integer  "seats"
    t.string   "location"
    t.string   "trasmission"
    t.float    "price"
    t.string   "photo"
