class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate 
    @student = set_student 
    @student.active = !@student.active 
    @student.save

  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end