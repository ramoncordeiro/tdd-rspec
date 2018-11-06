$count = 0

=begin
esse Let! é invocado antes de chamar a funcao.
enquanto o outro é chamado quando a variavel 
é chamada na primeira vez
=end
describe "let!" do 
	ordem_de_invocacao = []

	let!(:contador) do
		ordem_de_invocacao << :let!
		count =+ 1
	end

	it "chama o metodo helper antes do teste" do 
		ordem_de_invocacao << :exemplo
		expect(ordem_de_invocacao).to eq([:let!, :exemplo])
		expect(contador).to eq(1)
	end
end