describe (1..5), 'Ranges' do
	it '#cover' do
		expect(subject).to cover(2)# cover = cobrir
		expect(subject).to cover(2,5)
		expect(subject).not_to cover(0,6) #nao cobre 0 e 6
	end

	it {is_expected.to cover(2)} #teste mais verboso na tela do terminal
	it {is_expected.to cover(2,5)} # e tbm mais simples de escrever (implicito)
	it {is_expected.not_to cover(0,6)}

	it {expect(subject).to cover(2)}
end