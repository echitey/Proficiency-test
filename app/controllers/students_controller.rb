class StudentsController < ApplicationController
  before_action :find_student, only: [:edit,:show,:update,:destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
  def student_params
    params.require(:student).permit(:name, :register_number, :status)
  end

  def find_student
    @student = Student.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end

end
