require 'spec_helper'

describe Huemongous::Helpers::Client do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous::Helpers::Client.included_modules.include? HTTParty
		end

		it "must have the meethue as base endpoint" do
			client = Huemongous::Helpers::Client.new 
			client.base_uri.to_s.should eq("http://meethue.com")
		end
	end	

	describe "" do 

	end
end