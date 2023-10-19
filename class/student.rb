class Student < Person
  attr_accessor :classroom

  def initialize(age, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = nil
  end

  # Updated method definition with an unused parameter
  def play(_hooky)
    '¯\\(ツ)/¯'
  end

  def join_classroom(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end
end
