require 'pessoa'

describe 'atributos' do 
	it 'have_attributes' do
		pessoa = Pessoa.new
		pessoa.nome = "ramon"
		pessoa.idade = 20
		#expect(pessoa).to have_attributes(nome: "ramon")
		expect(pessoa).to have_attributes(nome: starting_with("r"), idade: (be >= 20))
	end

end