class StudentController < ApplicationController
  def index
  end

  def login
    @student = Student.find_by(username: params[:uname], password: params[:psw])
    puts '==================='
    puts @student
    puts '==================='
    if not @student
      redirect_to(root_path, flash: {danger: 'Invalid Student Log-In!'})
    else
      redirect_to student_index_path
    end
  end

  def register
    course_id = params[:subject] + params[:course_number].to_s
    course = Course.find_by(course_id: course_id, section: params[:section], semester: params[:semester])

    if not course
      flash[:danger] = "Course does not exist!"
    else
      flash[:success] = "Registered for course successfully!"
      @student.courses << course
    end
    render 'index'
  end

  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
