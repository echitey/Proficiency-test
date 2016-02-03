class MatriculasController < ApplicationController

  def create
    @student = Student.find(params[:student_id])
    @matricula = Matricula.new
    @matricula.student_id = params[:student_id]
    @matricula.course_id = params[:matricula][:course_id]
    if @matricula.save
      @student.status = 1
      @student.update(status: 1)
      redirect_to @student
    else
      redirect_to root_path
    end
  end

  def destroy
    @student = Student.find(params[:student_id])
    @matricula = Matricula.where(student_id: params[:student_id]).first
    if @matricula.destroy
      @student.update(status: 0)
      redirect_to @student
    else
      redirect_to root_path
    end
  end
end
