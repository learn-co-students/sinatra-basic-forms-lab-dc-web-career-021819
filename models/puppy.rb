class Puppy
  attr_accessor :name, :age
  attr_reader :breed

  def initialize(name, breed, age)
    @name, @breed, @age = name, breed, age
  end
end
