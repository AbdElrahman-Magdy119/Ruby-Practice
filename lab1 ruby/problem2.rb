def duplicate_count(str)
    # Convert the string to lowercase and count the frequency of each character
    char_freq = str.downcase.chars.tally
    
    # Count the number of characters that occur more than once
    char_freq.count { |char, freq| freq > 1 }
  end
  
  duplicate_count("abcde")