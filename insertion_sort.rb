class InsertionSort

  def sort(sorter)
    insertion_sorted = []
    insertion_sorted[0] = sorter.shift
    until sorter.length == 0
      pulled_element = sorter.shift
      if pulled_element <= insertion_sorted[0]
        insertion_sorted.insert(0, pulled_element)
      else
        i = 0
        while i < insertion_sorted.length
          if pulled_element > insertion_sorted[i]
            i += 1
          elsif pulled_element < insertion_sorted[i]
            insertion_sorted.insert(i, pulled_element)
            break
          end
          if i == insertion_sorted.length
            insertion_sorted.insert(-1, pulled_element)
            break
          end
        end
      end
    end 
    p insertion_sorted
  end

end

sorter = InsertionSort.new
sorter.sort(["d", "b", "a", "c", "e"])