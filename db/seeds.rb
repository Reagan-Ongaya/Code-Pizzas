# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

estaurant.create([{
    name: "OneStop",
    address: "2040"
},
{
    name: "SquareFootAble",
    address: "4050"

},
{
    name: "Giants",
    address: "1820"
},
{
    name: "SquareMeet",
    address: "3090"
},
{
    name: "NyamaChoma",
    address: "4070"
}
])

Pizza.create([{
    name: "pepperoni",
ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
},
{
    name: "nyamachoma",
    ingredients: "Dough, Tomato Sauce, Cheese, nyamachoma"
},
{
   name: "vegetarian",
   ingredients: "Dough, Tomato Sauce, Cheese, vegetable"
}
])

RestaurantPizza.create([{
    price: 12,
    pizza_id: 1,
    restaurant_id: 1
},
{
    price: 15,
    pizza_id: 3,
    restaurant_id: 2
},
{
    price: 20,
    pizza_id: 4,
    restaurant_id: 2
}])
