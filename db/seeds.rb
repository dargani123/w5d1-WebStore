# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#ActiveRecord::Base.execute do
  User.create!(email: "foo@bar.com", password: "pass")
  User.create!(email: "e", password: "p")

  p1 = Product.create!(name: "pizza", price: 2 )
  p2 = Product.create!(name: "bologni", price: 15 )
  p3 = Product.create!(name: "hockey puck", price: 4 )
  p4 = Product.create!(name: "paper", price: 7 )


  #end