control 'check_package' do

  describe package('nginx') do
    it { should be_installed }
  end

end
