class MenuController < ApplicationController
  def index
		@sections = %w(Breakfast Lunch Dinner Supper)
		@food_items = FoodItem.filter_by_section(params[:section])
    if params[:sort].present?
      @food_items = @food_items.order(params[:sort])
    end
  end
end
