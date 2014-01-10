require 'spec_helper'

describe Huemongous do
	describe "default configuration " do

		it "must include httpparty methods" do
			Huemongous.must_include HTTParty
		end
	end	
end