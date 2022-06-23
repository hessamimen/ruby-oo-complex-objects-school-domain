# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !roster[grade]
        roster[grade] = []
        roster[grade] << student
        elsif roster[grade]
        roster[grade] << student
        end
        roster[grade]
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        result = {}
        roster.each do |grade, student|
            result[grade] = student.sort
        end
        result
    end
end