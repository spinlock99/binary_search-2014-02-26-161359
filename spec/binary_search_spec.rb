require 'spec_helper'
require 'binary_search'

describe BinarySearch do
  subject(:binary_search) { BinarySearch.new([1,3]) }

  describe "new" do
    it "should instantiate" do
      expect { binary_search }.should_not raise_exception
    end
  end

  describe '.find' do
    it 'returns the index of the value' do
      expect(binary_search.find(3)).to eq(1)
    end

    it 'finds low end values too' do
      expect(binary_search.find(1)).to eq(0)
    end

    it 'returns nil if the value is not found' do
      expect(binary_search.find(5)).to eq(nil)
    end

    it 'handles odd numbers of elements' do
      expect(BinarySearch.new([1,3,5,7,9]).find(5)).to eq(2)
    end

    it { BinarySearch.new([1,3,5,7,9]).find(7).should eq(3) }

    it 'handles more than trivial sized data sets' do
      data = []
      10000.times { |i| data << i + 1 }
      BinarySearch.new(data).find(899).should eq(898)
    end

    it 'handles duplicates in the data' do
      BinarySearch.new([1,3,5,5,7,9]).find(3).should eq(1)
    end

    it 'handles duplicates' do
      BinarySearch.new([1,3,5,5,7,9]).find(5).should eq(3)
    end

    it 'handles strings' do
      BinarySearch.new(['a','b','c','d']).find('c').should eq(2)
    end
  end
end
