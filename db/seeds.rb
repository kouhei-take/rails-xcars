# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photo1 = "http://res.cloudinary.com/chikarao/a-team-van_iecmv0"
photo2 = "http://res.cloudinary.com/chikarao/miura_rmyj9b"
photo3 = "http://res.cloudinary.com/chikarao/lambo-yamato_ygxp94"
photo4 = "http://res.cloudinary.com/chikarao/landcruiser_kp33a4"
photo5 = "http://res.cloudinary.com/chikarao/cobra_nr2qgq"

puts "start"

user1 = User.new(email: "dummy@dummy.com", password:"123456")
user1.save
user2 = User.new(email: "dummy2@dummy.com", password:"123456")
user2.save
user3 = User.new(email: "dummy3@dummy.com", password:"123456")
user3.save
user4 = User.new(email: "dummy4@dummy.com", password:"123456")
user4.save
user5 = User.new(email: "dummy5@dummy.com", password:"123456")
user5.save

car = Car.new(name: "Car1", make: "GMC", model: "Vandura", year: 1983, color: "black", seats: 8, location: "1005 Beverly Glen, Bel Air", transmission: "automatic", price: 100, user_id: 1, longitude:
34.0934113, latitude: -118.4410771)

car.remote_photo_url = photo1
car.user = user1
car.save!

car = Car.new(name: "Car2", make: "Ferrari", model: "Miura", year: 1970, color: "red", seats: 2, location: "10236 Charing Cross Rd. Bel Air", transmission: "manual", price: 200, user_id: 2, longitude: 34.076458, latitude: -118.4318042)
car.remote_photo_url = photo2
car.user = user2
car.save!

car = Car.new(name: "Car3", make: "Lamborghini", model: "Diablo", year: 1983, color: "Green", seats: 8, location: "144 Monovale Dr.Bel Air", transmission: "automatic", price: 100, user_id: 3, longitude: 34.0818728, latitude: -118.4263422)
car.remote_photo_url = photo3
car.user = user3
car.save!

car = Car.new(name: "Car4", make: "Nissan", model: "GTR", year: 2015, color: "Black", seats: 4, location: "331 Sage Lane Santa Monica", transmission: "automatic", price: 100, user_id: 4, longitude: 34.0310818, latitude: -118.5166705)
car.remote_photo_url = photo4
car.user = user4
car.save!

car = Car.new(name: "Car5", make: "Toyota", model: "Landcruiser", year: 2016, color: "Red", seats: 8, location: "K29400 Bluewater Dr. Malibu", transmission: "automatic", price: 100, user_id: 5)
car.remote_photo_url = photo5
car.user = user5
car.save!

puts "end"
