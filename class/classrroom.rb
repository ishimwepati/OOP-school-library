class Classroom
  attr_accessor :label
  attr_reader :students
  
  def initialize(label)
    @label = label
  end
  
  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
