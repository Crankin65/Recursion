#Sum Range functions

def sum_range(n)
  total = 0 
  i = n
  while i > 0
    total += i
    i -=1
  end
  puts total
  
end

def sum_range_recursive(n, total = 0)
  if n <= 0
    puts total
  else
    return sum_range_recursive(n-1, total + n)
  end
end

sum_range_recursive(6)