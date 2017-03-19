class BubbleSort

  def sort(sorter)
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
    p sorter
  end

end

sorter = BubbleSort.new
sorter.sort (["d", "b", "a", "c"])