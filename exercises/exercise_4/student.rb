class Student 
  attr_accessor :name, :grades

  def initialize(name)
    @name = name
    @grades = []
  end

  def add_grade(grade)
    @grades << grade
  end

  def average_grade
    @grades.sum.to_f / @grades.length.to_f
  end

  def letter_grade
    case average_grade
      when 90..100 then "A"
      when 80..89 then "B"
      when 70..79 then "C"
      when 60..69 then "D"
    else "F"
    end
  end
end

student = Student.new("John Doe")
student.add_grade(90)
student.add_grade(80)
student.add_grade(70)
puts student.average_grade
puts student.letter_grade