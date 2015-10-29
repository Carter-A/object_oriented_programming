#parent class named person
class Person
  attr_accessor :name
  def initialize
    @name = name
  end

  def greeting
    puts "Hi, my name is #{name}"
  end
end

#student class that enherits from person
class Student < Person
  def learn
    puts "I get it!"
  end
end

#teacher class the enherits from person
class Teacher < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

#create a new teacher instance named chris and call his greeting method
chris = Teacher.new
chris.name = "Chris"
chris.greeting

#create a new student instance named cristina and call her greeting method
cristina = Student.new
cristina.name = "Cristina"
cristina.greeting

#call the teach method on teacher and learn method on student
chris.teach
cristina.learn

#there is no teach method on student because the method exists on teacher
#They both enherit from perosn but not from each other.
cristina.teach
