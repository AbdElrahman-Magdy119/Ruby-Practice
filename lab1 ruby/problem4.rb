def is_triangle(a, b, c)
    # Check if the sum of any two sides is greater than the third side
    (a + b > c) && (a + c > b) && (b + c > a)
end

is_triangle(1, 2, 2)