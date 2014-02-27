class BinarySearch
  attr_accessor :data
  alias :initialize :data=

  def find(target)
    binary_search(target, @data)
  end

  private

  def binary_search(target, data)
    pivot = data.length / 2
    return pivot if data[pivot] == target
    if pivot == 0
      return nil
    else
      if data[pivot] > target
        return binary_search(target, data[0..pivot - 1])
      else
        index = binary_search(target, data[pivot..-1])
        if index.nil?
          return nil
        else
          return pivot + index
        end
      end
    end
  end
end
