def createPhoneNumber(numbers)
    # Make sure the array contains at least 10 integers
    return "Invalid input" unless numbers.length >= 10 && numbers.all? { |n| n.between?(0, 9) }
    
    # Extract the first 10 integers and format them as a phone number
    "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
  end
  
 p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])