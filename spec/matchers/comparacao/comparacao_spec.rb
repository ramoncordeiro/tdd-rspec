describe 'Matchers Comparacao' do 
	it '>' do 
		expect(5).to be > 1
	end

	it '>=' do 
		expect(5).to be >= 2
		expect(5).to be >= 5
	end

	it '<' do 
		expect(5).to be < 10
	end

	it '<=' do
		expect(5).to be <=12
		expect(5).to be <=5 
	end

	it 'be_between inclusive' do
		expect(5).to be_between(2,7).inclusive
		expect(5).to be_between(2,7).inclusive
		expect(7).to be_between(2,7).inclusive 
	end

	#agrega os erros para mostrar todos no final. Ao inves de mostrar o primeiro 
	# e em seguida parar nele, sem mostrar os demais
=begin	
	it 'be_between inclusive' do
		aggregate_failures do
			expect(5).to be_between(2,7).inclusive
			expect(1).to be_between(2,7).inclusive
			expect(8).to be_between(2,7).inclusive 
		end
	end

	#outro jeito de mostrar falhas agregadas
	it 'be_between inclusive', :aggregate_failures do
		#aggregate_failures do
			expect(5).to be_between(2,7).inclusive
			expect(1).to be_between(2,7).inclusive
			expect(8).to be_between(2,7).inclusive 
		#end
	end
=end
	it 'be_between exclusive' do
		expect(5).to be_between(2,7).exclusive
		expect(3).to be_between(2,7).exclusive
		expect(6).to be_between(2,7).exclusive 
	end

	it 'match' do
		expect("fulano@com.br").to match(/..@../)# match casa com exp regulares
	end

	it 'start_with' do
		expect("fulano de tal").to start_with("fulano")
		#expect(3).to be_between(2,7).exclusive
		#expect(6).to be_between(2,7).exclusive 
	end

	it 'end_with' do
		expect("fulano de tal").to end_with("tal")
		#expect(3).to be_between(2,7).exclusive
		#expect(6).to be_between(2,7).exclusive 
	end
end