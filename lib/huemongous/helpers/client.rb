module Huemongous
  module Helpers

    require "httpclient"
    require "uri"
    
  	class Client

      def initialize(base_uri=nil)
  		    @base_uri =  ( URI(base_uri) if base_uri ) || URI("http://meethue.com") 
      end

      def base_uri
        @base_uri
      end

      def get(path)
        @base_uri.path = path
        client.get(@base_uri.to_s)

      end

      private 

      def client
        @client ||= HTTPClient.new
      end
  	end

  	
  end

end