require 'spec_helper'
require_relative '../lib/math'

describe "#fib" do 
  it "should have a method called fib" do
    expect(method(:fib))
  end

  it "should have one required parameter named x" do
    parameters = method(:fib).parameters
    expect(parameters[0]).to include(:req)
    expect(parameters[0]).to include(:x)
    expect(parameters.length).to eq 1
  end  

  it "should give back the Fibannaci sequence" do
    expect(fib(1)).to eq [1]
    expect(fib(2)).to eq [1, 1]
    expect(fib(4)).to eq [1, 1, 2, 3]
    expect(fib(7)).to eq [1, 1, 2, 3, 5, 8, 13]
    expect(fib(9)).to eq [1, 1, 2, 3, 5, 8, 13, 21, 34]
    expect(fib(10)).to eq [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  end

  it "should raise an error when a non-integer is passed a parameter" do
    expect{fib("cat")}.to raise_error(NoMethodError)
    expect{fib(1.1)}.to raise_error("Needs to be an integer, not a float")
    expect{fib(true)}.to raise_error(NoMethodError)
    expect{fib([1, 2])}.to raise_error(NoMethodError)
  end

end
