module Huemongous
  module Helpers


  	require "httparty"
    require "uri"
  	class Client
  		
    

      def initialize(base_uri=nil)
  		    @base_uri = URI("http://meethue.com") || URI(base_uri) if base_uri.nil?
      end

      def base_uri
        @base_uri
      end

      private 

      def client
        @client ||= HttpClient.new
      end
  	end

  	
  end

end