class SortedArray
  attr_reader :internal_arr

  def initialize arr=[]
    @internal_arr = []
    arr.each { |el| add el }
  end

  def add el
    # we are going to keep this array
    # sorted at all times. so this is ez
    lo = 0
    hi = @internal_arr.size
    # note that when the array just
    # starts out, it's zero size, so
    # we don't do anything in the while
    # otherwise this loop determines
    # the position in the array, *before*
    # which to insert our element
    while lo < hi
      # let's get the midpoint
      mid = (lo + hi) / 2
      if @internal_arr[mid] < el
        # if the middle element is less 
        # than the current element
        # let's increment the lo by one
        # from the current midway point
        lo = mid + 1
      else
        # otherwise the hi *is* the midway 
        # point, we'll take the left side next
        hi = mid 
      end
    end

    # insert at the lo position
    @internal_arr.insert(lo, el)
  end

  def each &block
    i = 0
    until i == @internal_arr.size 
      yield @internal_arr[i] 
      i += 1
    end 
    @internal_arr
  end

  def map 
    new_arr = [] 
    self.each { |el| new_arr << ( yield el ) } 
    new_arr
  end

  def map! 
    new_arr = [] 
    self.each { |el| new_arr << ( yield el ) }
    @internal_arr = new_arr 
  end

  def find 
    result = nil 

    self.each do |el|
      if yield(el)
        result = el 
        break
      end 
    end 
    result

  end

  def inject acc=nil 

    self.each do |el|
      if acc.nil?
        acc = @internal_arr[0]
      else 
        acc = yield( acc, el )
      end 
    end 
    acc 
  end
end













