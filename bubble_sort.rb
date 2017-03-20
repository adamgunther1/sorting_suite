class BubbleSort
  def sort(sorter)
    in_order = false
    while in_order == false
      i = 0
      in_order = true
      while i < sorter.length - 1
        if sorter[i] > sorter[i + 1]
          sorter[i], sorter[i + 1] = sorter[i + 1], sorter[i]
          in_order = false
        end
        i += 1
      end
    end  
    p sorter  
  end
end

sorter = BubbleSort.new
sorter.sort (["d", "b", "a", "c"])