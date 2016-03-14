json.array!(@reviews) do |review|
  json.extract! review, :id, :food_item_id, :rating, :content
  json.url review_url(review, format: :json)
end
