require 'spec_helper'
require_relative '../lib/fib'

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
    expect(fib(1)).to eq [0]
    expect(fib(2)).to eq [0, 1]
    expect(fib(4)).to eq [0, 1, 1, 2]
    expect(fib(7)).to eq [0, 1, 1, 2, 3, 5, 8]
    expect(fib(9)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21]
    expect(fib(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    expect(fib(39)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169]
  end

  it "should raise an error when a non-integer is passed a parameter" do
    expect{fib("cat")}.to raise_error(NoMethodError)
    expect{fib(1.1)}.to raise_error(NoMethodError)
    expect{fib(true)}.to raise_error(NoMethodError)
    expect{fib([1, 2])}.to raise_error(NoMethodError)
  end

end
