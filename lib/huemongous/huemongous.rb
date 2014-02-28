
module Huemongous
 


  class << self
    include Huemongous::Helpers
  	
    def bridges
  		client.get("/api/nupnp")
  	end

  	private
  	
  end

end