#teste
require 'calculator'
describe Calculator do
	#subject(:calc){describe_class.new()}
	#a linha a cima serve para quando nao quer usar subject'
	#mas quer definir uma palavra, usa ela no lugar.
	#exemplo: result = calc.sum(5,7)
	context '#sum' do
		it 'with positive numbers' do
			result = subject.sum(5,7)
			expect(result).to eq(12)
		end

		it 'with negative and positive numbers' do
			result = subject.sum(-5,7)
			expect(result).to eq(2)
		end

		xit 'with negative numbers' do
			result = subject.sum(-5,-7)
			expect(result).to eq(-12)
		end

	end
end