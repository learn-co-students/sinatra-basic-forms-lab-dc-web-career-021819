class Puppy
  attr_reader :breed
  attr_accessor :age, :name
  @@all = []

  def initialize(name:, months_old:, breed:)
    @name, @age, @breed = name, months_old, breed
    @@all << self
  end

  def self.all
    @@all
  end
end
