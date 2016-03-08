class Dish < ActiveRecord::Base
  belongs_to :course
  validates :course, presence: true
  validates :name, presence: {message: "You must enter a name for the dish"}
  validates :description, presence: {message: "You must enter a description for the dish"}
  validates :price, presence: {message: "You must enter a price for the dish"}

  def course_name
    course && course.name
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
