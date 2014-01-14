class SortedArray
  def initialize arr=[]
    @internal_arr = []
    arr.each { |el| add el }
  end

  def add el
    # your implementation is going to be more interesting
    # in that your SortedArray class will have this inserting
    # array elements in order from the previous day's lab
    @internal_arr << el
  end

  def each &block
    raise NotImplementedError.new("You need to implement the each method!")
  end

  def map &block
    raise NotImplementedError.new("You need to implement the map method!")
  end

  def map! &block
    raise NotImplementedError.new("You need to implement the map! method!")
  end

  def find value
    raise NotImplementedError.new("You need to implement the find method!")
  end

  def inject acc=nil, &block
    raise NotImplementedError.new("You need to implement the inject method!")
  end
end
