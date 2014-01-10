require 'spec_helper'

describe Huemongous do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous.included_modules.includes? HTTParty
		end
	end	
end