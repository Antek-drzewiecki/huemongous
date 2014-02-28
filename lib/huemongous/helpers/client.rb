module Huemongous
  module Helpers


  	require "httparty"
  	class Client
  		
    

      def initialize(base_uri)
  		
      end
      

      private 

      def client
        @client ||= HttpClient.new
  	end

  	
  end

end