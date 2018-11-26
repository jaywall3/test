class Person

  attr_accessor :name, :age

    def initialize(name, age)
      @name = name
      @age = age
    end
end


all_the_people = []

new_profile = Person.new("Gayle", 33)

all_the_people.push(new_profile)

new_profile = Person.new("Frank", 59)

all_the_people.push(new_profile)

all_the_people.each do |people|

puts people.name
end
