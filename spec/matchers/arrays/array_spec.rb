describe Array.new([1,2,3]), "Array" do
	it '#include' do
		expect(subject).to include(2)
		expect(subject).to include(2,1)
	end

	it '#contain_exactly' do
		expect(subject).to contain_exactly(2,1,3) 
		#Precisa ter todos os elementos, nao necessa na orde
	end

	it '#match_array' do
		expect(subject).to match_array([1,2,3])
		#todos os elementos exatamente na ordem
	end
end