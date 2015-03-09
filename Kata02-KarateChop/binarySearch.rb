class BinarySearch
  def self.chop(method, value, arr)
    if arr.empty?
      return -1
    end

    case method
    when 'recursive'
      self.recursive(value, 0, arr.length-1, arr)
    end
  end

  def self.recursive(value, initVal, endVal, arr)
    if arr.length == 1
      if arr[initVal] == value
        return initVal
      else
        return -1
      end
    end
    midVal = get_middle_point(initVal, endVal)

    if arr[midVal] == value
      return midVal
    elsif arr[midVal] < value
      recursive(value, midVal+1, endVal, arr)
    else arr[midVal] > value
      recursive(value, initVal, midVal-1, arr)
    end
  end

  def self.get_middle_point (initVal, endVal)
    return (initVal + endVal) / 2
  end
end
