# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.new(make: "GMC", model: "Vandura", year: 1983, color: "black", seats: 8, location: "1005 Beverly Glen, Bel Air", transmission: "automatic", price: 100, photo: "a-team-van_iecmv0", user_id: 1).save

Car.new(make: "Ferrari", model: "Miura", year: 1970, color: "red", seats: 2, location: "10236 Charing Cross Rd. Bel Air", transmission: "manual", price: 200, location: "USA", photo: "miura_rmyj9b", user_id: 2).save

Car.new(make: "Lamborghini", model: "Diablo", year: 1983, color: "Green", seats: 8, location: "144 Monovale Dr.Bel Air", transmission: "automatic", price: 100, photo: "a-team-van_iecmv0", user_id: 3).save

Car.new(make: "Nissan", model: "GTR", year: 2015, color: "Black", seats: 4, location: "331 Sage Lane Santa Monica", transmission: "automatic", price: 100, photo: "landcruiser_kp33a4", user_id: 4).save
Car.new(make: "Toyota", model: "Landcruiser", year: 2016, color: "Red", seats: 8, location: "K29400 Bluewater Dr. Malibu", transmission: "automatic", price: 100, photo: "cobra_nr2qgq", user_id: 5).save

User.new(email: "dummy@dummy.com", password:"123456").save
User.new(email: "dummy2@dummy.com", password:"123456").save
User.new(email: "dummy3@dummy.com", password:"123456").save
User.new(email: "dummy4@dummy.com", password:"123456").save
User.new(email: "dummy5@dummy.com", password:"123456").save
User.new(email: "dummy6@dummy.com", password:"123456").save
