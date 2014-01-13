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

        it 'should apply the action in the block to each element, lreturning array' do
          # fill this spec in with a meaningful example
        end
      end
    end

    describe "that update the original array" do
      describe :map! do
        it 'the original array should be updated' do
          # fill this in
        end

        it 'should apply the action in the block to each element, lreturning array' do
          # this is just the same as the example above
        end
      end
    end
  end

  describe :find do
  end

  describe :inject do
  end
end
