class Course < ActiveRecord::Base
  has_many :dishes

  def get_dishes_by_course
    Dish.where('course_id = ?', id).order(:price)
  end
  
  def self.get_dishes_by_course
    results = []
    courses = Course.all
    courses.each do |c|
      temp = Dish.where('course_id = ?', c.id).order(:price)
      results << temp if !temp.empty?
    end
    results
  end

end
