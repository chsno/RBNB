# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

reeta = User.create(email: "reeta@wagon.com", password:"123456", first_name: "Reeta", last_name: "Olivier")
reeta_flat = Flat.create(address: "174 Manchester Road", city: "Manchester", rooms: 4, price: 250, user_id: reeta.id)
reeta_booking = Booking.create(start_date: "02/02/2022", end_time: "05/02/2022", user_id: reeta.id, flat_id: reeta_flat.id)
man1 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678892087/manchester_dekshc.jpg")
man2 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678817749/development/511hcnogopix6p8sfhdtt9lb7xmi.jpg")
man3 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678817750/development/4dgepog6bn14tn4do5ftgia3rygl.jpg")
reeta_flat.photos.attach([io: man1, filename: "man1.jpg", content_type: "image/jeg"])
reeta_flat.photos.attach([io: man2, filename: "man2.jpg", content_type: "image/jeg"])
reeta_flat.photos.attach([io: man3, filename: "man3.jpg", content_type: "image/jeg"])
reeta_flat.save

charles = User.create(email: "charles@wagon.com", password:"246810", first_name: "Charles", last_name: "SNO")
charles_flat = Flat.create(address: "714 Avenue Paris", city: "Paris", rooms: 3, price: 205, user_id: charles.id)
charles_booking = Booking.create(start_date: "04/01/2022", end_time: "10/02/2022", user_id: charles.id, flat_id: charles_flat.id)
paris1 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678892086/paris_dplrz2.jpg")
paris2 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678892086/pairs_wrmoqp.jpg")
paris3 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678893958/download_o40mii.jpg")
charles_flat.photos.attach([io: paris1, filename: "paris1.jpg", content_type: "image/jeg"])
charles_flat.photos.attach([io: paris2, filename: "paris2.jpg", content_type: "image/jeg"])
charles_flat.photos.attach([io: paris3, filename: "paris3.jpg", content_type: "image/jeg"])
charles_flat.save

emma = User.create(email: "emma@wagon.com", password:"1357911", first_name: "Emma", last_name: "Mc)
emma_flat = Flat.create(address: "417 Belfast Boulevard", city: "Belfast", rooms: 1, price: 520, user_id: emma.id)
emma_booking = Booking.create(start_date: "09/10/2022", end_time: "10/12/2022", user_id: emma.id, flat_id: emma_flat.id)
bel1 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678894106/beflast_2_bapede.jpg")
bel2 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678894106/beflast_hzfpy7.jpg")
bel3 = URI.open("https://res.cloudinary.com/dtvlnkce6/image/upload/v1678894106/belfast_flat_enhcou.jpg")
emma_flat.photos.attach([io: bel1, filename: "bel1.jpg", content_type: "image/jeg"])
emma_flat.photos.attach([io: bel2, filename: "bel2.jpg", content_type: "image/jeg"])
emma_flat.photos.attach([io: bel3, filename: "bel3.jpg", content_type: "image/jeg"])
emma_flat.save
