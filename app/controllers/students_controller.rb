class StudentsController < ApplicationController
  
  before_action :current_student, only: [:show, :edit, :update, :destroy]
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @teachers = Teacher.all
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
        @student.save
        redirect_to student_path(@student)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    @teachers = Teacher.all
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end 

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def current_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :major, :age, :teacher_id)
  end

end
