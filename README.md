# README


# Restaurant API

## Entity Relational Diagram

<img width="951" alt="domain-1" src="https://user-images.githubusercontent.com/105637783/226190889-8cc2bd46-1a9a-4324-a377-1fbe0e3c8fa3.png">



## Introduction.
A restaurant api
It has 3 tables restaurant,pizza,restaurantpizza

 
The following routes are available
 
* GET /restaurants: Returns a list of all restaurants in JSON format.
* GET /restaurants/:id: Returns a restaurant and its associated pizzas in JSON format. If the restaurant is not found, it returns an error with status code 404.

* DELETE /restaurants/:id: Deletes a restaurant and its associated restaurant pizzas from the database. If the restaurant is not found, it returns an error with status code 404.

* GET /pizzas: Returns a list of all pizzas in JSON format.

* * POST /restaurant_pizzas: it creates a new RestaurantPizza that is associated with an existing Pizza and Restaurant.if it is not created succesfully it returns an error.

## Ruby Version

2.7.6

## System Dependencies

Developer tools (VS code, build-essential package on Ubuntu, Ruby on rails)

## First-Time Setup

1. Read this README ;
2. Install dependencies using `bundle`.
3. Seeding test data-rails db:seed to seed the data.
4. Turn on the server with `rails s`- The server will run on `http://localhost:3000`
