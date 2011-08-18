require 'spec_helper'

describe Calculator do
  before(:each) do
    @calc = Calculator.new
  end
  context "Addition" do
    context "When I add 5 and 5" do
      it "should return 10" do
        @calc.add(5,5).should == 10
      end
    end
    context "When I add 5 and -5" do
      it "should return 0" do
        @calc.add(5,-5).should == 0
      end
    end
    context "When I add 5 and nil" do
      it "should raise an exception" do
        lambda { @calc.add(5,nil) }.should raise_exception
      end
    end
  end
end