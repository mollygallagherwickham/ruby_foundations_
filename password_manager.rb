class PasswordManager

  def initialize 
    @password_manager = {}
  end

  def sufficient_length?(password)
    return password.length > 7
  end


  def add(service, password)
    special_characters = /[!@$%&]/
    if sufficient_length?(password) && password =~ special_characters
      @password_manager[service] = password
    else
      return "Error"
    end
  end

  def password_for(service)
    return @password_manager[service]
  end

  def services
    return @password_manager.keys
  end

end

# This should create an instance of password manager
# password_manager = PasswordManager.new

# this should allow me to add a passwords
# password_manager.add("Acebook", "password123@")
# password_manager.add("MakersBnB", "superpassword123")

# this should show me the password for the given service
# password_manager.password_for("Acebook")

# this should show me an array of all services
# password_manager.services


