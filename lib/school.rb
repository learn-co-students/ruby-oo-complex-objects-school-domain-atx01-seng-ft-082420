require 'pry'

class School
attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, level)
        # Creating an array for each student within the roster linked to the grade level
        self.roster[level] ||= []
        # Pushing students into the roster grade level
        self.roster[level] << student

    end

    def grade(level)
        # Getting the roster grade level
        self.roster[level]
    end

    def sort
        # Using each to reach the student within the HoA
        self.roster.each do |level, student|
            student.sort! # sorting the students in place so Bart and Homer don't exchange places (passes test)
        end
    end

end