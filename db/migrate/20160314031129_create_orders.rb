class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :food_item_id
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
