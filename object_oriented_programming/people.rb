class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
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

nadia = Instructor.new('Nadia')
nadia.greeting
chris = Student.new('Chris')
chris.greeting
nadia.teach
chris.learn

# call the teach method on your student instance. What happens? Why doesn't that work? Leave a comment in your program explaining why.
chris.teach
nadia.learn
# Both methods won't work because:
# Nadia can not learn, because on the instructor class we didn't define the learn method
# Chris can not teach, because on the student class we didn't define a teach method.
# They belong to the class Person, so whatever is inside that class they'd inherit
