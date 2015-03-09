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
    return -1
  end

  def self.get_middle_point (initVal, endVal)
    return (initVal + endVal) / 2
  end
end
