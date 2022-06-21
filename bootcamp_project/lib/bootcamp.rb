class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = Array.new
        @students = Array.new
        @grades = Hash.new {|h,k| h[k]= []}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(str)
        @teachers << str
    end

    def enroll(string)
        if @students.length < @student_capacity
            @students << string
            return true
        else
            return false
        end
    end

    def enrolled?(str)
        return @students.include?(str)
    end

    def student_to_teacher_ratio
        (@students.length) / @teachers.length
    end

    def add_grade(str,num)
        if enrolled?(str)
            @grades[str] << num
            return true
        else
            return false
        end

    end

    def num_grades(str)
        if @grades.has_key?(str)
            @grades[str].length
        end
    end

    def average_grade(str)
        sum = 0
        if @grades.has_key?(str)
            @grades[str].sum / num_grades(str)
        end
    end

end
