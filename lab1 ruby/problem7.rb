def filter_list(l)
    l.select { |x| x.is_a?(Integer) && x >= 0 }
end

filter_list([1,2,'a','b'])