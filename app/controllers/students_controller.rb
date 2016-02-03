class StudentsController < ApplicationController
  before_action :find_student, only: [:edit,:show,:update,:destroy]

  def index
    @students = Student.all.order("name ASC")
  end

  def new
    @student = Student.new
  end

  def edit
  end

  def show
    @matricula = Matricula.where(student_id: params[:id]).first
    if @matricula
      @course = Course.find(@matricula.course_id)
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: "O Estudante foi cadastrado com sucesso."
    else
      render 'new', notice: "Ocorreu um erro."
    end
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: "O Estudante foi atualizado com sucesso."
    else
      render 'edit',notice: "Ocorreu um erro."
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
