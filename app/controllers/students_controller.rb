class StudentsController < ApplicationController


def index
  @students = Student.all
end

def new
  @student = Student.new
end

def show
  @student = Student.find(params[:id])
end

def create
  @student = Student.create(students_params)
  if @student.valid?
    redirect_to student_path(@student)
  else
    render :new
  end
end

def edit
  @student = Student.find(params[:id])
end

def update
  @student = Student.find(params[:id])
  @student.update(students_params)
  if @student.valid?
    redirect_to student_path(@student)
  else
    render :edit
  end
end

def destroy
Student.find(params[:id]).delete
 redirect_to "/students"
end

private
def students_params
  params.require(:student).permit(:name, :teacher_id, :math_proficiency, :reading_proficiency)
end

end
