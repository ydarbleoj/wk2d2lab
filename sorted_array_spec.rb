require 'rspec'
require './sorted_array.rb'

describe SortedArray do
  before do
    @source = [2,3,4,7,9]
    @sorted_array = SortedArray.new @source
  end

  describe :each do
    context 
    it 'should return the array' do
      @sorted_array.each.should eq @source
    end

    context 'when passed a block' do
      specify do 
        expect do |b| 
          @sorted_array.each(&b) 
        end.to yield_successive_args(2,3,4,7,9) 
      end
    end
  end

  describe :map do
  end

  describe :map! do
  end

  describe :find do
  end

  describe :inject do
  end
end
