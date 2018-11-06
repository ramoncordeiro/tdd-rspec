describe 'Matcher output' do
	it { expect{puts "ramon"}.to output.to_stdout}
	it { expect{print "ramon"}.to output("ramon").to_stdout}
	it { expect{puts "ramon developer"}.to output(/ramon/).to_stdout}

	it { expect{ warn "ramon"}.to output.to_stderr}
	it { expect{warn "ramon"}.to output("ramon\n").to_stderr}
	it { expect{warn "ramon developer"}.to output(/ramon/).to_stderr}
end