# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding database tables"

price = [ greater_than_or_equal_to: 1, less_than_or_equal_to: 30 ]

puts "seeding Restaurant table"

restaurant1 = Restaurant.create(name:"Sottocasa NYC", address:"298 Atlantic Ave, Brooklyn, NY 11201")

restaurant2 = Restaurant.create(name:"PizzArte", address:"69 W 55th St, New York, NY 10019")

puts "Seeding Pizzas Table"

pizza1 = Pizza.create(name:"Cheese", ingredients:"Dough, Tomato Sauce, Cheese")

pizza2 = Pizza.create(name:"Pepperoni", ingredients:"Dough, Tomato Sauce, Cheese, Pepperoni")

puts "Seeding Restaurant Pizza Table"

4.times do 
    RestaurantPizza.create(restaurant_id: rand(1..2), pizza_id: rand(1..2), ingredients: ingredients.sample)
end

puts "End of Seeding"