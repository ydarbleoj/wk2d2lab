require 'rspec'
require './sorted_array.rb'

describe SortedArray do
  before do
    @source = [2,3,4,7,9]
    @sorted_array = SortedArray.new @source
  end

  describe "iterators" do
    describe "that don't update the original array" do 
      describe :each do
        context 'when passed a block' do
          specify do 
            expect do |b| 
              @sorted_array.each(&b) 
            end.to yield_successive_args(2,3,4,7,9) 
          end
        end

        it 'should return the array' do
          @sorted_array.each {|el| el }.should eq @source
        end
      end

      describe :map do
        it 'the original array should not be changed' do
          original_array = @sorted_array.internal_arr
          expect { @sorted_array.map {|el| el } }.to_not change { original_array }
        end

        specify do 
          expect do |b| 
            @sorted_array.map(&b) 
          end.to yield_successive_args(2,3,4,7,9) 
        end

        it 'should apply the action in the block to each element, returning array' do
          pending "fill this spec in with a meaningful example"
        end
      end
    end

    describe "that update the original array" do
      describe :map! do
        it 'the original array should be updated' do
          pending "fill this spec in with a meaningful example"
        end

        it 'should apply the action in the block to each element, returning array' do
          pending "this is just the same as the example above"
        end
      end
    end
  end

  describe :find do
    it 'should return the value, if it''s found' do
      pending
    end
  end

  describe :inject do
    it 'should accumulate a value based on the function passed' do
      pending
    end
  end
end
