class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student.id)
  end


  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(
      first_name: params[:student][:first_name],
      last_name: params[:student][:last_name])
    redirect_to student_path(@student)
  end
end
