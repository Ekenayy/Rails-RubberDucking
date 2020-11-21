class StudentsController < ApplicationController

  before_action :locate_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
    #@student = Student.find(params[:id])
  end 

  def new
    @student = Student.new
  end 
  
  def create
    student = Student.create(student_params)

    if student.valid?
      redirect_to student_path(student)
    elsif student.errors
      my_errors = student.errors.full_messages
      #p errors 
      redirect_to new_student_path
    end 
  end 

    private

      def student_params 
        params.require(:student).permit(:name, :mod)
      end 

      def locate_student
        @student = Student.find(params[:id])
      end 


end
