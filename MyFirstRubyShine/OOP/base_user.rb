module Models
  class BaseUser
    attr_reader :name, :email, :age, :deepest_darkest_secret

    def initialize(name, email, age, deepest_darkest_secret)
      @name = name
      @email = email
      @age = age
      @deepest_darkest_secret = deepest_darkest_secret
    end

    def to_s
     "Name: #{@name} | Email: #{@email} | Age: #{@age} | Secret: #{@deepest_darkest_secret}"
    end
  end
end