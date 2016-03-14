class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :food_item_id
      t.integer :rating
      t.text :content

      t.timestamps null: false
    end
  end
end
