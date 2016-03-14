json.array!(@orders) do |order|
  json.extract! order, :id, :food_item_id, :name, :phone, :address
  json.url order_url(order, format: :json)
end
