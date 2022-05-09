=begin
  Assignment 
  Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.
Tips:
Think about what the base case is and what behavior is happening again and again and can actually be delegated to someone else (e.g. that same method!).
It may be helpful to check out the background videos again if you don’t quite understand what should be going on.


=end

def merge_sort(array)
  if array.size < 2
    return array
  else
    half = array.size / 2
    left = merge_sort(array[0...half])
    right = merge_sort(array[half...array.size])
    merge(left,right)
  end
end

def merge(left, right, array = [])
  (left.size + right.size).times do 
    if left.empty? 
      array << right.shift
    elsif right.empty?
      array << left.shift
    else
      comparison = left <=> right
      if comparison == -1
        array << left.shift
      elsif comparison == 1 
        array << right.shift
      else 
        array << left.shift
      end
    end
  end
  array
end

arr = [8,4,3,4,5,5,5,5,6,7,89,3,3,2,6,6,7]
puts merge_sort(arr)

  # Take array
  # split in half
  # if array.size > 2, split in half 
    # elsif look at left most element
    # compare to right element 
    # sort, look at right element 
    # return to case above, sort right
    # sort right
    # return to top, sort right

  # base case = array.size < 2 && been sorted