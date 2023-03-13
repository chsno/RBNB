# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
reeta = User.create(email: "reeta@wagon.com", password:"123456")
reeta_flat = Flat.create(address: "174 Manchester Road", city: "Manchester", rooms: 4, price: 250, user_id: reeta.id)
reeta_booking = Booking.create(start_date: "02/02/2022", end_time: "05/02/2022", user_id: reeta.id, flat_id: reeta_flat.id)

charles = User.create(email: "charles@wagon.com", password:"246810")
charles_flat = Flat.create(address: "714 Avenue Paris", city: "Paris", rooms: 3, price: 205, user_id: charles.id)
charles_booking = Booking.create(start_date: "04/01/2022", end_time: "10/02/2022", user_id: charles.id, flat_id: charles_flat.id)

emma = User.create(email: "emma@wagon.com", password:"1357911")
emma_flat = Flat.create(address: "417 Belfast Boulevard", city: "Belfast", rooms: 1, price: 520, user_id: emma.id)
emma_booking = Booking.create(start_date: "09/10/2022", end_time: "10/12/2022", user_id: emma.id, flat_id: emma_flat.id)
