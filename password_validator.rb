# Valid passowords are
# - 8 or more characters
# - include at least one of these characters: !, @, $, %, &

# both statements need to apply at the same time.

def valid?(password)
  # password needs to be 8 or more characters (.length) ( > 7)
  if password.length < 8
    return false
  # password includes at least 1 of !, @, $, %, & (.include?)
  elsif password.include? ("!")
    return true
  elsif password.include? ("@")
    return true
  elsif password.include? ("$")
    return true
  elsif password.include? ("%")
    return true
  elsif password.include? ("&")
    return true
  else
    return false
  end
end
