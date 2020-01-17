# Add your code here
require "pry"

class Dog
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    save

  end

  def self.all
    @@all
  end

  def self.clear_all
    @@all.clear
  end

  def self.print_all
    # binding.pry
    @@all.each do |dog|
      puts dog.name
    end
  end

  def save
    @@all << self
    # binding.pry
  end

end

pluto = Dog.new("Pluto")
fido = Dog.new("Fido")
maddy = Dog.new("Maddy")
