class Person

  def name(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end
end

class Student < Person
  def learn
    puts "I get it"
  end
end

class Instructor < Person
  def teach
    "Everything in Ruby is an Object"
  end
end
