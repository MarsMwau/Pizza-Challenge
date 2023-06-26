class ChangeRestrauntidInRestaurantPizza < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurant_pizzas, :restraurant_id, :restaurant_id
  end
end
