require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end


  def square(number, square)
    return number * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator  do
	calculator = Calculator.new
	describe '#addition' do
		it 'Should return the sum of two numbers!' do
			expect(calculator.add(5, 6)).to eq(11)
		end
	end
	describe '#subtraction' do
		it 'should return the difference of two numbers' do
			expect(calculator.subtract(5, 6)).to eq(-1)
		end
	end
	describe '#mutiplication' do
		it 'should return the product of the two numbers' do
			expect(calculator.multiply(5, 6)).to eq(30)
		end
	end
	describe '#division' do
		it 'should return the quotient of the two numbers' do
			expect(calculator.divide(30, 3)).to eq(10)
		end
	end
	describe '#square' do
		it 'should return the first number squared second-number times' do
			expect(calculator.square(3, 2)).to eq(6)
		end
	end
	describe '#power' do
		it 'should return the first number to the power of second number' do
			expect(calculator.power(3, 2)).to eq(9)
		end
	end
end