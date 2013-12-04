class Object
  def my_tap
    yield(self)
    self
  end
end

# EXAMPLE
# Keep my_tap method within the class to use it in the class
# -----------------------------------------------------------

class Person 
  attr_accessor :name, :age

  def initialize
    @name
    @age
  end
end

Person.new.my_tap do |person| 
  person.name = "Nisha" 
  person.age = 28
end

# => returns an object of Person w/name and age assigned