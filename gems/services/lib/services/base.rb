class Services::Base
  include Services::Extensions::HasLogger
  include Services::Extensions::HasResponse

  attr_accessor :params, :accessor

  def initialize(options = {})
    @accessor = options[:as]
    @params = options[:params]
  end
end
