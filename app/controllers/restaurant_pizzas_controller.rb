class RestaurantPizzasController < ApplicationController


    #GET/ RestaurantPizza
    def index
        restaurantpizzas = RestaurantPizza.all
        render json: restaurantpizzas, except: [:created_at,:updated_at]

    end
     #GET / RestaurantPizza
    def create
        restaurantpizzas = RestaurantPizza.create!(restaurantpizzas_params)
        render json: restaurantpizzas, status: :created
        
    end


    def show
        restaurantpizzas = find_restaurantpizzas
        render json: restaurantpizzas

    end
    # UPDATE restaurantPizza
    def update
    
      restaurant = find_restaurantpizzas
      restaurant.update!(restaurantpizzas_params)
  
     end 

   private
    #Find using ID 
    def find_restaurantpizzas
        RestaurantPizza.find_by(id: params[:id])
    end
    
    #Params for RestaurantPizza
    def restaurantpizzas_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  

    
end