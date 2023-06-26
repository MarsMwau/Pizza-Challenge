class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index
        restaurants = Restaurant.all 
        render json: restaurants, except: [:created_at, :updated_at], status: :ok
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, include: { pizzas: { only: [:id, :name, :ingredients] } }, except: [:created_at, :updated_at], status: :ok
    end

    
    private
    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end

end
