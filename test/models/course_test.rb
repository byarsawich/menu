require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "Get all dishes sorted by course" do
    courses =  Course.all
    dishes = courses[0].get_dishes_by_course

    assert_equal 1, dishes.length
    assert_equal "Fries", dishes[0].name
  end
end
