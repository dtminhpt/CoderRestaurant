class MenuController < ApplicationController
  def index
		@sections = %w(Breakfast Lunch Dinner Drinks)
		@food_items = FoodItem.filter_by_section(params[:section])
    if params[:sort].present?
      @food_items = @food_items.order(params[:sort])
    end
  end
end
