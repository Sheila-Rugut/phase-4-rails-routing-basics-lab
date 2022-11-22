class StudentsController < ApplicationController
    def index
        students=Student.all
        render json: students
    end
    def grades
        students=Student.order("grade DESC")
        render json: students
    end
    # def highest_grade
    #     students=Student.where(grade: highest_grade).order("grade DESC")
    #     render json: students
    # end
end
