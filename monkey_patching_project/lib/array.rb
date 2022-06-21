class Array
  def span
    if self.length < 1
        nil
    else
        self.max - self.min
    end
  end

  def average
    if self.length < 1
        nil
    else
        self.sum * 1.0 / self.length
    end
  end

  def median
    if self.length == 0
        return nil
    end

    if self.length % 2  == 0
        mid = self.length / 2
        sorted = self.sort
        (sorted[mid - 1] + sorted[mid]) * 1.0 / 2
    else
        sorted = self.sort
        mid = self.length / 2
        sorted[mid]
    end
  end

    def counts
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(arg)
        count = 0

        self.each do |el|
            if el == arg
                count += 1
            end
        end
        count
    end

    def my_index(char)
        self.each_with_index do |el,i|
            if el == char
                return i
            end
        end
        return nil
    end

    def my_uniq
        hash = {}
        self.each do |el|
            hash[el] = true
        end
        hash.keys
    end

    def my_transpose
        length = self.length
        width = self[0].length

        new_arr = Array.new(length){[]}

        (0...length).each do |i|
            self.each do |sub_arr|
                new_arr[i] << sub_arr[i]
            end
        end
        new_arr
    end
end
