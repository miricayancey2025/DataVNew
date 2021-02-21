class RegistrarController < ApplicationController
  def index
  end

  def login
    username = params[:uname]
    password = params[:psw]
    if username != 'Admin' or password != 'admin'
      redirect_to(root_path, flash: {danger: 'Invalid Registrar Log-in!'})
    else
      redirect_to registrar_path
    end
  end

  def search_results
    by_id = Student.find_by(id: params[:search].to_i)

    @students = nil
    if by_id
      @students = [by_id]
    else 
      by_firstname = Student.where(firstname: params[:search])

      if by_firstname
        @students = by_firstname
      else
        by_lastname = Student.where(lastname: params[:search])
        
        if by_lastname
          @students = by_lastname
        else
          flash[:danger] = "Student not found!"
        end
      end
    end
    render 'index'
  end
end
