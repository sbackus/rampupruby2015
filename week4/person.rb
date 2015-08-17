class Person

  attr_accessor :name, :height, :age

  def initialize(name)
    @name
  end

  def say_hello
    puts "hello. I am #{@name}. I'm #{@age} years old. I am #{height}"
  end
end

obama = Person.new("obama")
obama.name = "President Barak Obama"
obama.age = 53
obama.say_hello

sam = Person.new("Sam")





