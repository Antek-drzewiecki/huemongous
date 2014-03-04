require 'spec_helper'

describe Huemongous::Helpers::Client do
	describe "default configuration " do


		before(:each) do
			@tested_uri = URI("http://192.168.1.1")
			@client = Huemongous::Helpers::Client.new(@tested_uri)
		end
		
		it "must have the meethue as base endpoint" do
			client = Huemongous::Helpers::Client.new 
			client.base_uri.should eq(URI("http://meethue.com"))
		end

		it "should initialize a proper uri" do 
			@client.base_uri.should eq(@tested_uri)
		end 

		it "should not accept a bad uri" do
			tested_uri = "I'm broken"
			expect { Huemongous::Helpers::Client.new(tested_uri) }.to raise_error(URI::InvalidURIError)
		end

		it "should append the request to the url." do 
			path = "/a/path"
			stub_request(:get, "http://192.168.1.1"+path)

			@client.get(path)	

			a_request(:get, "http://192.168.1.1"+path).should have_been_made.times(1)
		end 

		it "should not accept an invalid path" do 
			path = "a/broken/path"

			expect { @client.get(path)}.to raise_error(URI::InvalidComponentError)
			
			a_request(:get, "http://192.168.1.1"+path).should have_been_made.times(0)
		end 

		
	end	

	describe "" do 

	end
end