class Products::Base < Services::BaseResource
  resource :product

  def resource_scope
    accessor.products
  end

  def collection
    respond_with build_collection, :products
  end
end
