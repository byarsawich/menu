class Dish < ActiveRecord::Base
  belongs_to :course
  validates :course, presence: true

  def course_name
    course.name
  end

  def course_name=(name)
    c = Course.find_by_name(name)
    if c
      self.course = c
    else
      raise Exceptions::InvalidCourse
    end
  end
end
