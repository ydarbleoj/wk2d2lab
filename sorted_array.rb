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
  end

  def map &block
  end

  def map! &block
  end

  def find value
  end

  def inject acc=nil, &block
  end
end
