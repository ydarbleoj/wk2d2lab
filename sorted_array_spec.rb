require 'rspec'
require './sorted_array.rb'

shared_examples "yield to all elements in sorted array" do |method|
    specify do 
      expect do |b| 
        sorted_array.send(method, &b) 
      end.to yield_successive_args(2,3,4,7,9) 
    end
end

describe SortedArray do
  let(:source) { [2,3,4,7,9] }
  let(:sorted_array) { SortedArray.new source }

  describe "iterators" do
    describe "that don't update the original array" do 
      describe :each do
        context 'when passed a block' do
          it_should_behave_like "yield to all elements in sorted array", :each
        end

        it 'should return the array' do
          sorted_array.each {|el| el }.should eq source
        end
      end

      describe :map do
        it 'the original array should not be changed' do
          original_array = sorted_array.internal_arr
          expect { sorted_array.map {|el| el } }.to_not change { original_array }
        end

        it 'creates a new array containing the values returned by the block' do
          sorted_array.map { |el| el * 2 }.should == [4, 6, 8, 14, 18]
        end
      end
    end

    describe "that update the original array" do
      describe :map! do
        it 'the original array should be updated' do
          original_array = sorted_array.internal_arr
          sorted_array.map! {|el| el }.should_not == sorted_array
        end

      it_should_behave_like "yield to all elements in sorted array", :map!
      end 
      
      it 'should replace value of each element with the value returned by block'  do
        sorted_array.map! { |el| 7 * el }
        sorted_array.internal_arr.should == (source.map { |ele| 7 * ele})
      end
      
      
    end
  end

   describe :find do
    it "should return the first element where block is not false" do
      sorted_array.find { |i| i % 2 == 0 }.should == (source.select{|i| i % 2 == 0}.shift)
    end

    it "should return nil if no match is detected" do
      sorted_array.find { |i| i % 10 == 0 }.should == (nil)
    end

  end

  describe :inject do 

   it 'should be able to return the sum of the numbers in the array' do
      sorted_array.inject { |sum, num| sum + num }.should ==  25 
    end

    it 'should take a starting value for the accumulator' do
      sorted_array.inject(10) { |sum, num| sum + num }.should == 35
    end

    it "should be able to return the product of the array" do
      sorted_array.inject { |sum, num| sum * num }.should == 1512
    end
  end 
  
end







