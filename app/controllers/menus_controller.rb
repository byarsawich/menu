class MenusController < ApplicationController
  def index
    @courses = Course.get_dishes_by_course
  end
end
