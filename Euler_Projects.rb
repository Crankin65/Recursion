# problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples
  #what is a multiple of 3. 
  goal = 10
  i = 0
  multiple_array = []
  while i < goal
    multiple_of_three = i * 3
    multiple_of_five = i * 5
    multiple_array.push(multiple_of_three)
    multiple_array.push(multiple_of_five)
    i += 1
  end

  sum = 0
  multiple_array.each do |number|
    sum += number
  end

  # multiple_array.reduce(0) do |sum, n|
  #   sum += n 
  #   sum = $sum_of_values
  # end

  puts "The sum of all multiples of 3 & 5 below #{goal} is #{sum}"
end


def multiples2(maximum)
  # Maximum value (10), minimum value (0)
  i = 0 
  max_value = maximum
  sum_array = []
  while i < maximum
    if i % 3 == 0
      sum_array.push(i)
      i += 1
    else
      i += 1
    end
  end

  j = 0
  while j < maximum 
    if j % 5 == 0
      sum_array.push(j)
      j += 1
    else
      j += 1
    end
  end

  #print sum_array 
  sum = 0

  sum_array.each do |n|
    sum += n
  end
  
  puts "The sum of all multiples of 3 & 5 below #{maximum} is #{sum}" 
end
 
multiples2(20)