class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        redirect_to student_path(@student)
    end

    def new
        @student = Student.new
    end

    def create
        @new_student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
        redirect_to student_path(@new_student)
    end

    def destroy
    end

end