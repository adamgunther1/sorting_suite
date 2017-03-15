#could use pop
#could use array.length.times to count it down

#sorter = BubbleSort.new

sorter = Array.new
sorter = ["d", "b", "a", "c"]

def sort()
    i = 0
    while i < sorter.length
    pulled_element = sorter.shift
      if pulled_element > sorter[0]
        if pulled_element > sorter[1] 
          if pulled_element > sorter[2]
            sorter.insert(3, pulled_element)
          else
            sorter.insert(2, pulled_element)
          end
        else
          sorter.insert(1, pulled_element)
        end  
      else
        sorter.insert(0, pulled_element)
      end
      i += 1
    end
  end

puts sorter.sort
