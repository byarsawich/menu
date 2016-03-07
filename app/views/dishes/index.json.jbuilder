json.array!(@dishes) do |dish|
  json.extract! dish, :id, :course_id, :price, :name, :description
  json.url dish_url(dish, format: :json)
end
