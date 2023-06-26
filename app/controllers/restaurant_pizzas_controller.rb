class RestaurantPizzasController < ApplicationController

    def create
        restaurantpizza = RestaurantPizza.create!(restaurantpizza_params)
        render json: restaurantpizza, status: :created
    end
    
    private
    
    def restaurantpizza_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end

end
