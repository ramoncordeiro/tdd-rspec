$counter=0 #global variable

#Nesse let. o let é chamado apena quando a variavel
#e utilizada a primeira vez (linha 9)
describe "let" do 
	let(:count) {$counter += 1}

	it "memoriza o valor" do
		expect(count).to eq(1) #1a vez é carregado. Chama count+1
		expect(count).to eq(1) #pega do cache, nao chama o count+1
	end

	#aqui vai chamar o counter+1
	#intra-teste, faz cache, e nao chama de novo
	#inter-teste, chama de novo, como nesse caso.
	it "nao é cacheado" do
		expect(count).to eq(2)
	end
end