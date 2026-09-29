def bubble_sort!(array) 
  # Jobs to be done:
  # - Determine length of array
  # - Loop over the array in order
  # - In each loop, compare the current entry with the one right after it
  # - If the current entry > next, swap positions and trigger SORTED flag
  #   (flag will communicate that the array is still being sorted)
  
  counter = 0

  loop do
    was_sorted = false

    array.each_with_index do |num, index|
      if (index + 1) > (array.length - 1)
        break
      else
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1],array[index]
          was_sorted = true
        end
      end
    end
    
    # Exit condition
    unless was_sorted
      break
    else
      counter += 1
    end

  end

  return array

end

##### TESTING BEGINS HERE #####
def check_output(input, expected)
  array_to_verify = bubble_sort!(input.dup)
  puts array_to_verify == expected ? "PASS #{input}" : "FAIL #{input} != #{array_to_verify}, expected #{expected}"
end

check_output([4,3,78,2,0,2], [0,2,2,3,4,78])
check_output([], [])
check_output([1], [1])
check_output([2,1], [1,2])
check_output([1,2,3], [1,2,3])
check_output([3,2,1], [1,2,3])
check_output([5,5,5], [5,5,5])
check_output([-1,-5,3], [-5,-1,3])

#### TESTING ENDS #####