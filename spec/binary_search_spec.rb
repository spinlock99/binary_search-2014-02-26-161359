require 'spec_helper'
require 'binary_search'

describe BinarySearch do
  describe "new" do
    it "should instantiate" do
      lambda {
        BinarySearch.new
      }.should_not raise_exception
    end
  end
end
