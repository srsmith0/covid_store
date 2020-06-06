# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"


Category.create(name:"Health", description: "Stay safe out there!")
Category.create(name:"Entertainment", description: "Don't get bored and support local restaurants!" )
Category.create(name:"Tolietries", description: "Stay fresh!")
Category.create(name:"Food", description:"Don't go hungry during these difficult times.")

Product.create(name: 'Face Mask', price:   Faker::Number.decimal(l_digits: 2), category_id:1 )
Product.create(name: 'Hand Sanitizer', price:   Faker::Number.decimal(l_digits: 2), category_id:1 )
Product.create(name: 'Cold Medicine', price:   Faker::Number.decimal(l_digits: 2) , category_id:1 )
Product.create(name: 'Netflix Subscription', price:   Faker::Number.decimal(l_digits: 2) , category_id:2 )
Product.create(name: 'Spotify Subscription', price:   Faker::Number.decimal(l_digits: 2) , category_id:2 )
Product.create(name: 'Audible Subscription', price:  Faker::Number.decimal(l_digits: 2) , category_id:2 )
Product.create(name: 'GrubHub Gift Card', price:   Faker::Number.decimal(l_digits: 2) , category_id:2 )
Product.create(name: 'Toothbrush', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Tooth Paste', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Shampoo', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Conditioner', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Extra Soft Toliet Paper', price:   Faker::Number.decimal(l_digits: 2) , category_id: 3)
Product.create(name: 'Hand Soap', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Face Soap', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Deordorant', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Shaving Cream', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Razor', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: "Lotion", price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )
Product.create(name: 'Case o\' Water', price:   Faker::Number.decimal(l_digits: 2) , category_id:3 )


10.times do
  p_name = Faker::Food.fruits
  p_price = Faker::Number.decimal(l_digits: 2)
  Product.create(name:p_name, price: p_price, category_id: 4)
end
10.times do
  p_name = Faker::Food.dish
  p_price = Faker::Number.decimal(l_digits: 2)
  Product.create(name: p_name, price: p_price, category_id: 4)
end
10.times do
  p_name = Faker::Food.ingredient 
  p_price = Faker::Number.decimal(l_digits: 2)
  Product.create(name:p_name, price: p_price, category_id: 4)
end