def DNA_strand(dna)
    # Create a hash table with the base pairs
    base_pairs = {"A" => "T", "T" => "A", "C" => "G", "G" => "C"}
    
    # Use the hash table to complement each base in the DNA string
    dna.chars.map { |base| base_pairs[base] }.join
end

DNA_strand("ATTGC")