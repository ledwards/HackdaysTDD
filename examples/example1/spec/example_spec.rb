require 'spec_helper'

describe "Example" do
  describe ".fibonacci" do
    it "is 0 when n is 0" do
      Example.fibonacci(0).should == 0
    end

    it "is 1 when n is 1" do
      Example.fibonacci(1).should == 1
    end

    it "is the sum of the two previous fibonacci numbers when n > 1" do
      Example.fibonacci(2).should == 1
      Example.fibonacci(3).should == 2
      Example.fibonacci(4).should == 3
      Example.fibonacci(5).should == 5
    end
  end
end
