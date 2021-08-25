#Write your solution below:
class Animal
  def initialize(inputs_hash)
    @type = inputs_hash[:type] || "monkey"
    @state = "unknown"
  end

  attr_accessor :type, :state

  def eat(food)
    puts "The #{type} is eating #{food}."
  end
  
  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end
end

class Person < Animal
  def initialize(inputs_hash)
    super
    @type = "person"
    @age = inputs_hash[:age] || 18
    @gender = inputs_hash[:gender] || "unknown"
    @name = inputs_hash[:name] || "Ruby"
  end

  attr_accessor :age, :gender, :name

  def eat(food)
    if food.downcase == "person"
      puts "Whoa there cannibal, let's eat something else."
    else
      puts "The #{type} named #{name} is eating #{food}."
    end
  end

  def greet
    puts "Hi, I'm #{name}. I'm a #{type}, and I am #{age} years old."
  end
end

animal1 = Animal.new({})       # creates a default animal to test the methods on
person1 = Person.new({})       # creates a default person to test the methods on
p animal1
p person1
animal1.sleep
person1.wake
p animal1                      # checks that the sleep method called on animal1 worked
p person1                      # checks that the wake method called on person1 worked
p animal1.type
p person1.type                 # tests that the type method was taken from the accessor in Animal
p person1.state                # tests that the state method was taken from the accessor in Animal
person1.eat("chips & guac")
person1.eat("person")          # tests that the person cannot eat another person

animal2 = Animal.new({type: "giraffe"})
person2 = Person.new({age: 31, gender: "female", name: "Valkyrie"})
animal2.eat("lettuce")
person2.greet                  # tests greet method