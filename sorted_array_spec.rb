require 'rspec'
require './sorted_array.rb'

shared_examples "return the array" do

end

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

        it 'should apply the action in the block to each element and return the new array' do
          @sorted_array.map { |el| el * 2 }.should == [4,6,8,14,18]
        end
      end
    end

    describe "that update the original array" do
      describe :map! do
        it 'should return  array' do
          pending
        end
      end
    end
  end

  describe :find do
  end

  describe :inject do
  end
end
