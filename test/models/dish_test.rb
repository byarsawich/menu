require 'test_helper'

class DishTest < ActiveSupport::TestCase
  test "Assign and get course name" do
    dish = Dish.create(name: "Chicken Noodle", price: 3.49, description: "Your favorite homestyle chicken soup")
    course = courses(:two)
    
    dish.course_name = course.name
    dish.save
    assert_equal "Soups", dish.course_name
  end
end
