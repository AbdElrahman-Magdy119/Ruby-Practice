def open_or_senior(data)
    # Define a lambda function to check if a member is a senior
    is_senior = lambda { |age, handicap| age >= 55 && handicap > 7 }
    
    # Use the lambda function to classify each member as senior or open
    data.map { |member| is_senior.call(*member) ? "Senior" : "Open" }
end

open_or_senior([[45, 12],[55,21],[19, -2],[104, 20]])