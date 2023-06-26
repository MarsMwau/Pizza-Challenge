class PizzasController < ApplicationController
    def index
        pizza = Pizza.all 
        render json: pizza, except: [:created_at, :updated_at], status: :ok
    end
end
