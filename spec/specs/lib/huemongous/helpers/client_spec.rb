require 'spec_helper'

describe Huemongous::Helpers::Client do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous::Helpers::Client.included_modules.include? HTTParty
		end

		it "must have the meethue as base endpoint" do
			client = Huemongous::Helpers::Client.new 
			client.base_uri.should eq(URI("http://meethue.com"))
		end

		it "should initialize a proper uri" do 
			tested_uri = URI("192.168.1.1")
			client = Huemongous::Helpers::Client.new(tested_uri)
			client.base_uri.should eq(tested_uri)
		end 

		it "should not accept a bad uri" do

			tested_uri = "I'm broken"
			expect { Huemongous::Helpers::Client.new(tested_uri) }.to raise_error(URI::InvalidURIError)
			
		end
	end	

	describe "" do 

	end
end