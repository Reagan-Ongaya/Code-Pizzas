class PizzasController < ApplicationController
    
    #POST pizza
    def index
        pizza = Pizza.all
        render json: pizza,except:[:created_at,:updated_at]
    end
    
    #GET/ pizza
    def show
        pizza = find_pizza
        render json: pizza, except: [:created_at,:updated_at]
    end

    #POST / pizza
    def create
      render json: Pizza.create!(pizza_params)
    end

    #UPDATING Pizza
    def update
        pizza = find_pizza
        pizza.update!(pizza_params)
    end 
   
    #Delete pizza
    def destroy
        pizza = find_pizza
        pizza.restaurant_pizzas.destroy_all
        pizza.destroy
        head :no_content
    end

    private

    #Finding pizza using Params
    def find_pizza
        Pizza.find_by(id: params[:id])
     end

    # Params for pizza 
    def pizza_params
      params.permit(:name, :ingredients)
    end


end