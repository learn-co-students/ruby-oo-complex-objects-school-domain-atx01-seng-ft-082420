# code here!

class School
    attr_reader :name
    attr_accessor :roster

     def initialize(name)
        @name
        @roster = {}
    end


    def add_student(student, grade)
        roster[grade] ||= []
        #we must use ||= (or equals) to avoid having a key's value 
        #reassigned to an empty array.
        roster[grade].push(student)
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted_keys_hash = roster.sort.to_h
        sorted_keys_hash.map do |grade, students|
            students.sort!
          
        end
        sorted_keys_hash
        
    end
end
# A tip from Florence Liang 
# https://medium.com/@florenceliang/some-notes-about-using-hash-sort-by-in-ruby-f4b3a700fc33
# When we call sort on this hash, it will convert hash into a nested array:
# hash.sort
# => [[:a, 1], [:b, 2], [:c, 4], [:d, 3], [:e, 2]]
# Therefore, if we want to return the sorted hash in hash format, we need to call #to_h after #sort.