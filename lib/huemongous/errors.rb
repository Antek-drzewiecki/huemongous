module Huemongous

	module Errors

		class UnauthorizedUser				< StandardError; end
		class InvalidJSON					< StandardError; end
		class ResourceNotAvailable  		< StandardError; end
		class MethodNotAvailableForResource	< StandardError; end
		class MissingParametersInBody		< StandardError; end
		class ParameterNotAvailable			< StandardError; end
		class ParameterInvalidValue			< StandardError; end
		class ParameterNotModifable			< StandardError; end
		class InternalError					< StandardError; end

		class LinkButtonNotPressed			< StandardError; end
		class ParameterNotModifableWhileOff < ParameterNotModifable; end
		class BridgeGroupLimitReached		< StandardError; end
		class DeviceGroupLimitReached		< StandardError; end


		
    	class UnavailableError       < StandardError; end
	end
end