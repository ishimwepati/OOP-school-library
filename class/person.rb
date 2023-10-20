require_relative 'nameable'
require_relative 'rental'
require 'set'

class Person < Nameable
  attr_reader :id, :parent_permission, :rentals
  attr_accessor :name, :age

  def initialize(age, parent_permission, name = 'Unknown')
    super()
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def generate_id
    used_ids = Set.new
    loop do
      new_id = rand(1000..9999)
      unless used_ids.include?(new_id)
        used_ids.add(new_id)
        return new_id
      end
    end
  end

  def of_age
    age >= 18
  end

  def can_use_services
    age >= 18 || parent_permission == true
  end

  def correct_name
    name
  end
end
