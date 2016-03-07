class Course < ActiveRecord::Base
  has_many :dishes

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
