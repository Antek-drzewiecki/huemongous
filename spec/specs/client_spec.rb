require 'spec_helper'

describe Huemongous::Helpers::HTTPClient do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous::Helpers::HTTPClient.included_modules.include? HTTParty
		end

		it "must have the meethue as base endpoint" do
			Huemongous::Helpers::HTTPClient.base_uri.equal? "http://www.meethue.com"
		end
	end	

	describe ""
end