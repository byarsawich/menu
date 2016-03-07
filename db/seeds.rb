# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Course.create(name: "Appetizers")
Course.create(name: "Soups")
Course.create(name: "Salads")
Course.create(name: "Sandwiches")
Course.create(name: "Burgers")
Course.create(name: "Entrees")
Course.create(name: "Desserts")
Course.create(name: "Drinks")

if Rails.env.development?
  20.times do
    Dish.create(course_id: rand(8) + 1, name: Faker::Commerce.product_name, price: Faker::Commerce.price, description: Faker::Hipster.sentence)
  end
end
