control 'check_tag' do

  describe os_env('tags') do
    its('content') { should_not eq '' }   
  end

end
