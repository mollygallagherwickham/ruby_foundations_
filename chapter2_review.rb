my_array = [1, 2, 3, 4, 5]

# This is how to add items to an array
my_array << 6

my_hash = {
    :name => "Molly",
    :age => 28
}

# This is how to add a key and its value to a hash
my_hash[:favourite_colour] = "yellow"

# Arrays are a list of items. They are written inside square brackets []
# Hashes are a collection of keys and values. They are written inside curly brackets {}

# Hashes are useful for being able to associate data with other data (e.g. names, ages), this is not so easy when this information is in one array (i.e. one long list)

# class must start with class and the name of it and must end with an end!
class People
  def initialize(name, age, favourite_colour)
    @name = name # this is an instance variable - the scope is that it can be used anywhere within the class. Instance variables start with an '@'
    @age = age
    @favourite_colour = favourite_colour
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def favourite_colour
    return @favourite_colour
  end

end

# An instance of a class is the built of the blueprint. The class is the blueprint.

person1 = People.new("Molly", 28, "yellow")


# Scope is how we can describe the availability and extent of use of a variable

# local_variable can be used within the method it is in
# @instance_variable can be used within the class that it is in
# $global_variable can be used within the program that it is in
