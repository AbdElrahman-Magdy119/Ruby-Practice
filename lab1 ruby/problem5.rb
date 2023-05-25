def duplicate_encode(word)
    # Create a hash table to count the frequency of each character
    freq = Hash.new(0)
    word.downcase.each_char { |char| freq[char] += 1 }
    
    # Use the hash table to encode each character as "(" or ")"
    word.downcase.chars.map { |char| freq[char] > 1 ? ")" : "(" }.join
end

duplicate_encode("din")