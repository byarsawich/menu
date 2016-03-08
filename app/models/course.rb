class Course < ActiveRecord::Base
  has_many :dishes

  def get_dishes_by_course
    Dish.where('course_id = ?', id).order(:price)
  end

end
