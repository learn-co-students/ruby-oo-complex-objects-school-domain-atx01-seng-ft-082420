class School
    attr_accessor :school_name, :roster

    def initialize (name)
        @school_name = school_name
    @roster = {}
   end
 
   
   def add_student(student_name, grade)
    
    roster[grade] ||= []
    roster[grade]<< student_name
end

def grade(grade)
    p roster[grade]
    end

    def sort
        ordered = {}
roster.each do |grade, student_name|
    ordered[grade] = student_name.sort
end

ordered

        
    end

   



end