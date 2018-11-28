RSpec::Matchers.define_negated_matcher :be_not_within, :be_within 
#comando acima para negar um matcher negado, mais nome q sera negado.
describe 'be_within' do
	it{expect(12.5).to be_within(0.5).of(12)}
	it{expect(10.0).to be_not_within(0.5).of(12)}
end