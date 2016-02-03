class CoursesController < ApplicationController
  before_action :find_course, only: [:edit,:show,:update,:destroy]

  def index
    @courses = Course.all.order("name ASC")
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def show
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: "O Curso foi cadastrado com sucesso."
    else
      render 'new', notice: "Ocorreu um erro."
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course, notice: "O Curso foi atualizado com sucesso."
    else
      render 'edit', notice: "Ocorreu um erro."
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:name, :description, :status)
  end

  def find_course
    @course = Course.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path
  end
end
