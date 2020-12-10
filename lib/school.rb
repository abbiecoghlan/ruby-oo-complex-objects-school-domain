# code here!

require "pry"

class School
   def initialize(name)
    @name = name
    @roster = {}
    end 
   
    attr_accessor :name, :roster

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end    

    def grade(grade_number)
        @roster[grade_number]
    end 
   
    def sort
        sorted_names = @roster.each do |grade, names|
            @roster[grade] = names.sort
        end 
    end

end