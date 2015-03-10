class BinarySearch
  def self.chop(method, value, arr)
    if arr.empty?
      return -1
    end

    case method
    when 'recursive'
      recursive(value, 0, arr.length-1, arr)
    when 'iterative'
      iterative(value, arr)
    when 'functional'
      functional(value, arr)
    end
  end

  def self.recursive(value, initVal, endVal, arr)
    if initVal > endVal
      return -1
    end

    midVal = get_middle_point(initVal, endVal)

    if arr[midVal] < value
      recursive(value, midVal+1, endVal, arr)
    elsif arr[midVal] > value
      recursive(value, initVal, midVal-1, arr)
    else
      midVal
    end
  end

  def self.functional
    return -1
  end

  def self.iterative(value, arr)
    initVal = 0
    endVal = arr.length-1

    while endVal >= initVal
      midVal = get_middle_point(initVal, endVal)
      if arr[midVal] == value
        return midVal
      elsif arr[midVal] < value
        initVal = midVal+1
      else
        endVal = midVal-1
      end
    end

    return -1
  end

  def self.get_middle_point (initVal, endVal)
    midVal = initVal + ((endVal - initVal) / 2)
  end
end
