require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "Get all dishes sorted by course" do
    courses = Course.get_dishes_by_course

    assert_equal 2, courses.length
    assert_equal "Fries", courses[0][0].name
  end
end
