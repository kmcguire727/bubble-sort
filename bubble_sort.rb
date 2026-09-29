def bubble_sort(array) 
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

  p array

end

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
