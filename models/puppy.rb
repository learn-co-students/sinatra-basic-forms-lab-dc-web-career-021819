class Puppy
  attr_accessor :age, :name
  attr_reader :breed, :age

  def initialize(name, breed, age)
    @name, @breed, @age = name, breed, age
  end

end
