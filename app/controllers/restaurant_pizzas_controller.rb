class RestaurantPizzasController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def create
        restaurant_pizzas = RestaurantPizza.create!(valid_params)
        render json: restaurant_pizzas, except: [:created_at, :updated_at], status: :created
    end
    
    private
    def valid_params
        params.require(:restaurant_pizza).permit(:restaurant_id, :pizza_id, :price)
    end
      
end
