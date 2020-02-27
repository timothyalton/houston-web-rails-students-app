class TeachersController < ApplicationController
  
  before_action :current_teacher, only: [:show, :edit, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
      if @teacher.valid? 
        @teacher.save
        redirect_to teacher_path(@teacher)
      else
        flash[:errors] = @teacher.errors.full_messages
        redirect_to new_teacher_path
      end
  end

  def edit
  end

  def update
    @teacher.update(teacher_params)
    redirect_to teacher_path(@teacher)
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private

  def current_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name)
  end
end
