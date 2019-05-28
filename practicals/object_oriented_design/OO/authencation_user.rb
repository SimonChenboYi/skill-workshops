# Oringinal Class
# class User
#   def initialize(name, bio, age, password)
#     @name = name
#     @bio = bio
#     @age = age
#     @password = password
#   end
#
#   def authenticate(candidate_password)
#     return true if candidate_password == @password
#     false
#   end
#
#   def profile
#     "#{@name}, born in #{birth_year}: #{@bio}"
#   end
#
#   private
#
#   def birth_year
#     Time.new.year - @age
#   end
# end

# Diagramme
#
#   group 1          group 2
#  * authenticate   * profile
#                   * birth_year

------------------------------------
class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @authentication = Authentication.new(password)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

--------------------------------------
class Authentication

  def initialize(password)
    @password = password
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end
end
