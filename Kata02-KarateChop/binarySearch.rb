class BinarySearch
  def self.chop(method, value, arr)
    if arr.empty?
      return -1
    end

    case method
    when 'recursive'
      self.recursive(value, 0, arr.length, arr)
    end
  end

  def self.recursive(value, initVal, endValue, arr)
    return -1
  end
end
