require 'spec_helper'

describe Huemongous do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous::Helpers::HTTPClient.included_modules.include? HTTParty
		end
	end	
end