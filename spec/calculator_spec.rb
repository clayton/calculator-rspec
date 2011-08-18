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
  context "Division" do
    context "When I divide by zero" do
      it "should give me a warning" do
        @calc.divide(5,0).should == "You can't divide by zero!"
      end
    end
    context "When I divide 10 by 2" do
      it "should return 5 " do
        @calc.divide(10,2).should == 5
      end
    end
  end
  context "Subtraction" do
    context "When I subtract 5 from 10" do
      it "should return 5" do
        @calc.subtract(5,10).should == 5
      end
    end
  end
end