=begin
  Using iteration, write a method #fibs which takes a number and returns an array containing that many numbers 
  from the fibonacci sequence. Using an example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].

  Now write another method #fibs_rec which solves the same problem recursively. 
  This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either of these lengths a requirement… just get it done).

  
=end

def fibonacci_iterator(count)
#  I want to take input count
#  array.push(array[i-1] + array[i-2])
  i = 0
  fibonacci_array = []

  while count != i 
    if i == 0
      fibonacci_array.push(i)
      i+=1
    elsif i == 1
      fibonacci_array.push(i + fibonacci_array[i-1])
      i+=1
    elsif i > 1
      fibonacci_array.push(fibonacci_array[i-1] + fibonacci_array[i-2])
      i+=1
    end
  end

  if count == i
    puts "#{fibonacci_array}"
  end

end

#fibonacci_iterator(12)

def fibonacci_recursion(count, array)
  fibonacci_array=[]

  if number <= 0
    puts array
  elsif number == 1
    fibonacci_array.
    count -= 1
  
  fibonacci_array
    
  end