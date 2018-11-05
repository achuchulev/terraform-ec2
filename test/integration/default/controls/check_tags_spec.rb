tags = attribute(	
	"tags",
	description: "Test EC2 instance tag 'Name' is not empty "
	)


control 'check_tag' do
	describe tags do 
	  it { should_not eq "nil" } 
	  it { should_not eq "" }
	end
end
