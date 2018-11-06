require 'pessoa'

describe 'Atributos' do 
	
	#before(:each)do
	#	puts " ANTES "
	#	@pessoa = Pessoa.new
	#end

	let(:pessoa){Pessoa.new} #funciona parecido com o 
	#before(:each) acim

	it 'have_attributes' do
		#pessoa = Pessoa.new
		pessoa.nome = "ramon"
		pessoa.idade = 20
		#expect(pessoa).to have_attributes(nome: "ramon")
		expect(pessoa).to have_attributes(nome: starting_with("r"), idade: (be >= 20))
	end

end