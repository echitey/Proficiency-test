class WelcomeController < ApplicationController
  def index
    @student_count = Student.count
    @course_count = Course.count
  end
end
