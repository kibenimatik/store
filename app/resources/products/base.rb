class Products::Base < Services::BaseResource
  resource :product
  decorator 'Products::Decorator'

  def resource_scope
    accessor.products
  end
end
