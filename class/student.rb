class Student < Person
  attr_accessor :classroom

  def initialize(age, name: 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = nil
  end

  def play(_hooky) # Updated method definition with an unused parameter
    '¯\\(ツ)/¯'
  end

  def join_classroom(classroom)
    @classroom = classroom
    classroom.add_student(self)
  end
end
