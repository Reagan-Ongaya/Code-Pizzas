class RestaurantsController < ApplicationController
  

  #POST / Retaurant
    def index
        restaurant = Restaurant.all
        render json: restaurant, except:[:created_at,:updated_at]
    end

    #POST / Restaurant
    def show
        restaurant = find_restaurant.as_json(include: { pizzas: { only: [:id, :name, :ingredients] } }, except: [:created_at,:updated_at])
        render json: restaurant
    end

    #POST Restaurant
    def create
      render json: Restaurant.create!(restaurant_params)
    end
    #UPDATE Restaurant
   def update
    restaurant = find_restaurant
    restaurant.update!(restaurant_params)

   end 
    #DELETE Restaurant
    def destroy
        restaurant = find_restaurant
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content
    end

    private

    #Find Restaurant by ID
    def find_restaurant
       Restaurant.find_by(id: params[:id])
     end
    
     #Params for Restaurant
    def restaurant_params
      params.permit(:name, :address)
    end


end