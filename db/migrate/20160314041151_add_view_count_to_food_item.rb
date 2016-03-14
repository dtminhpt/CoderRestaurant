class AddViewCountToFoodItem < ActiveRecord::Migration
  def change
    add_column :food_items, :view_count, :integer, default: 0
  end
end
