require './person'
require './concatable'

class User < Person
  attr_accessor :phone
  attr_accessor :email

  def initialize(name = nil, email = nil)
    super(name)
    self.email = email
  end

  def self.validate_form(phone)
    if phone.nil?
      puts 'no'
    else
      phone.start_with?('0') && phone.length == 11
    end
  end

  def create(phone)
    if valid_name? && email
      if User.validate_form(phone)
        File.open('myfile.txt', 'a') do |f|
          f.puts name + ' ' + email + ' ' + phone
        end
        false
      else
        puts 'no'
      end
    else
      puts 'no'
    end
  end

  def list_all
    File.open('myfile.txt', 'r') do |file|
      file.each_line { |line| puts line }
    end
  end

  def list(n = nil)
    File.open('myfile.txt', 'r') do |file|
      if n.nil?
        file.each_line { |line| puts line }
      else
        file.each_line.with_index(1) do |line, index|
          break if index > n

          puts line
        end
      end
    end
end
end

user = User.new
puts "Choose an option:"
puts "1. Create user"
puts "2. List all users"
puts "3. List users up to a specific number"

option = gets.chomp.to_i

case option
when 1
    puts "What's your name?"
    name = gets.chomp
    user = User.new(name)
    if !user.valid_name?
    puts 'Sorry, the name is not valid'
    else
    puts "What's your Email?"
    email = gets.chomp

    user = User.new(name, email)

    if !user.email
        puts 'Sorry, the email is not valid'
    else
        puts "What's your Mobile?"
        mobile = gets.chomp
        user.phone = mobile

        if !User.validate_form(user.phone)
        puts 'Sorry, the mobile number is not valid'
        else
        user.create(user.phone)
        puts "Welcome, #{user.name}"
        end
    end
    end
when 2
  user.list_all
when 3
  puts "Enter the number of users to list:"
  number = gets.chomp.to_i
  user.list(number)
else
  puts "Invalid option"
end





