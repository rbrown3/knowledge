class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def create
  @teacher = Teacher.create(teachers_params)
    if @teacher.valid?
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teachers_params)
      if @teacher.valid?
        redirect_to teacher_path(@teacher)
      else
        render :edit
      end
  end

  def destroy
    @teacher = Teacher.find(params[:id]).destroy
    redirect_to teacher_path
  end

private

  def teachers_params
    params.require(:teacher).permit(:name, :email)
  end

end
