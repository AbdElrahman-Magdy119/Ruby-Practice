class Person

    attr_accessor :name
    
  def initialize(name)
    @name = name
  end
  
  

  def valid_name?
    /^[[:alpha:]]+$/.match?(@name)
  end
end


# person = Person.new("JohnDoe")
# puts person.valid_name? # Output: true

# person = Person.new("123")
# puts person.valid_name? # Output: false