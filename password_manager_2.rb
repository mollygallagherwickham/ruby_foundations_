class PasswordManager2
    def initialize
        @password_manager2 ={}
        @password_unique_error = "ERROR: Passwords must be unique"
    end

    def password_unique(service, password)
        @password_manager2.any?{|service, values| values['password'] == password }
    end

    def password_add_update(service, password)
        @password_manager2[service] = {'password' => password, 'added_on' => Time.now}
    end

    def add(service, password)
        if password_unique(service, password)
            @password_unique_error
        elsif @password_manager2[service] 
            "ERROR: Service names must be unique"
        else
            password_add_update(service, password)
        end
    end

    def remove(service)
        @password_manager2.delete(service)
    end

    def services
        @password_manager2.keys
    end

    def sort_by(service_or_added_on)
        if service_or_added_on == 'service'
            services.sort
        else service_or_added_on == 'added_on'
           @password_manager2.sort_by{|service, values| values[service_or_added_on]}.map{|entry| entry.first}
        end
    end

    def password_for(service)
        @password_manager2[service]['password']
    end

    def update(service, password)
        if password_unique(service, password)
            @password_unique_error 
        elsif @password_manager2[service]['password'] == password
            "ERROR: Password already updated"
        else
            password_add_update(service, password)
        end
    end

    
end

# This should create an instance of password manager2
# password_manager = PasswordManager2.new 

# This should allow me to add passwords (if they don't already exist)
# password_manager.add(service, password)
# password_manager.add('acebook', 'password123')

# This should allow me to remove the service and associated password
# password_manager.remove(service)
# password_manager.remove('acebook')

# This should show me a list of all services that have a password
# password_manager.services

# This should allow me to sort a list of services by either service or added_on
# password_manager.sort_by(service_or_added_on)
# password_manager.sort_by('service')

# This should allow me to view the password for that service
# password_manager.password_for(service)
# password_manager.password_for('acebook')

# This should allow me to update password of the service
# password_manager.update(service, password)
# password_manager.update('acebook, 'qwerty123')



# having looked through the requirements, I realise I need to be able to sort by a date/time (not just service, password). 
# I have decided to use a nested hash to assist with this challenge.
# hash = { 'service' { 'password' => password, 'added_on' => 'dd/mm/yyyy'}}
