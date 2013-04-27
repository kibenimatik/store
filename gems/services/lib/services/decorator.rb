class Services::Decorator
  attr_accessor :resource

  def initialize(resource)
    @resource = resource
  end

  def method_missing(method, *args, &block)
    return super unless resource.respond_to?(method)

    resource.send(method, *args, &block)
  end
end
