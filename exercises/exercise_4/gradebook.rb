require_relative 'student.rb'

class Gradebook < Student
  attr_accessor :students

  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def remove_student(name)
    @students.delete_if { |student| student.name == name }
  end

  def find_student(name)
    @students.find { |student| student.name == name }
  end

  def student_average(name)
    student = find_student(name)
    student&.average_grade # &. is the safe navigation operator in case of a nil object being passed in, there won't be an error thrown
  end

  def student_letter_grade(name)
    student = find_student(name)
    student&.letter_grade # &. is the safe navigation operator in case of a nil object being passed in, there won't be an error thrown
  end

end

gradebook = Gradebook.new
gradebook.add_student(Student.new("John Doe"))
gradebook.add_student(Student.new("Jane Doe"))
gradebook.add_student(Student.new("Jack Doe"))
gradebook.students.each { |student| student.add_grade(rand(100)) }
gradebook.students.each { |student| puts student.name }
gradebook.students.each { |student| puts student.average_grade }
gradebook.students.each { |student| puts student.letter_grade }
