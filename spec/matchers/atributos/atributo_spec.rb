require 'pessoa'

describe 'atributos' do 
	
	#before(:each)do
	#	puts " ANTES "
	#	@pessoa = Pessoa.new
	#end

	#after(:each)do
	#	@pessoa.nome = "Sem nome!"
	#	puts 'DEPOIS >>>>>>>>> #{@pessoa.inspect}'
	#end

	around(:each) do |teste|
		puts "antes"
		@pessoa = Pessoa.new

		teste.run #roda o teste. Separa before e After do bloco acima
		#isto e outro jeito de fazer before/after(:each)
		@pessoa.nome = "Sem nome!"
		puts "DEPOIS >>>>>>>>> #{@pessoa.inspect}"
	end

	it 'have_attributes' do
		#pessoa = Pessoa.new
		@pessoa.nome = "ramon"
		@pessoa.idade = 20
		#expect(pessoa).to have_attributes(nome: "ramon")
		expect(@pessoa).to have_attributes(nome: starting_with("r"), idade: (be >= 20))
	end

end