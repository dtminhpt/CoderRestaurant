class MenuController < ApplicationController
  def index
  		@sections = %w(Breakfast Lunch Dinner Supper)
  		@food_items = FoodItem.where(section: params[:section])
  end
end
