# In these exercises, you'll define a few small classes
# The first ones will be familiar
# Do them without looking back at your previous work
# The next will be a bit more complex
# And so on...

# In some cases, you'll define classes with methods that manipulate arrays or hashes

# The requirements will be provided as follows

# Class Name
# Initialization args, if there are any
# Method Name
# Method arguments, if there are any
# Method return value
# Examples, if needed
# More methods, as needed

# Example requirements

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'

# Example solution

# > class Greeter
# >   def hello(name)
# >    return 'Hello, ' + name
# >  end
# > end

# Greeter
# hello
# Takes one string as an arg (a name)
# Returns 'Hello, Rita', if the arg is 'Rita'
# goodbye
# Takes one string as an arg (a name)
# Returns 'Goodbye, Sam', if the arg is 'Sam'
# goodnight
# Takes one string as an arg (a name)
# Returns 'Goodnight, Jo', if the arg is 'Jo'
# goodmorning
# Takes one string as an arg (a name)
# Returns 'Goodmorning, Alex', if the arg is 'Alex'

class Greeter
  def hello(name)
    return "Hello, #{name}"
  end

  def goodbye(name)
    return "Goodbye, #{name}"
  end

  def goodnight(name)
    return "Goodnight, #{name}"
  end

  def goodmorning(name)
    return "Goodmorning, #{name}"
  end
end

# Calculator
# add
# takes two numbers as args
# returns the total
# multiply
# takes two numbers as args
# multiplies one by the other
# returns the result
# subtract
# takes two numbers as args
# subtracts the second from the first
# returns the result
# divide
# takes two numbers as args
# divides the first by the second
# returns the result
# history
# takes no args
# returns the results of all previous calculations

class Calculator
  def add(num1, num2)
    num1 + num2
  end 

  def multiply(num1, num2)
    num1 * num2
  end

  def subtract(num1, num2)
    num1 - num2
  end
  
  def divide(num1, num2)
    num1 / num2
  end

  def history
    return [add, multiply, subtract, divide,]
  end
end

# Basket
# add
# takes one argument of any type
# adds it to the list of items
# items
# returns everything that has been added to the basket

class Basket
  def initialize 
    @list = []
  end
  
  def add(arg)
    @list << arg
  end

  def items
    return @list
  end

end

# Cohort
# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students
# students
# returns all the students who have been added to the cohort
# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer

class Cohort
  def initialize
    @student_list = []
  end

  def add_student(student_hash)
    @student_list << student_hash
  end
  
  def students
    @student_list
  end

  def employed_by(employer)
    @student_list.select{|person| person['employer'] == employer }
  end
end

# Person
# is initialized with a complex hash, for example...
class Person
  def initialize(hash)
    @hash = hash
    @addresses = @hash['addresses']
    @pets = @hash['pets']
  end

  def work_address
    work_hash = @addresses.find{|address| address['name'] == 'work'}
    "#{work_hash["building"]} #{work_hash["street"]}"
  end

  def home_address
    home_hash = @addresses.find{|address| address['name'] == 'home'}
    "#{home_hash["building"]} #{home_hash["street"]}"
  end

  def pets
    pets_count = @pets.select{|pet| pet['name']}.length
    pet_description = @pets.map{|pet| "- a #{pet['animal']} called #{pet['name']}\n"}.join
    return "#{@hash["name"]} has #{pets_count} pets\n#{pet_description}"
  end
end

# pets
# takes no args
# returns a nice summary of the person's pets

# E.g.
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen