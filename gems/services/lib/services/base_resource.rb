class Services::BaseResource < Services::Base
  include Services::Extensions::HasResource
  include Services::Extensions::HasCallbacks
  include Services::Extensions::HasService
  include Services::Extensions::HasDecorator
end
