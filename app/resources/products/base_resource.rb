class Products::BaseResource < Services::BaseResource
  resource :product, class_name: 'Product'
  decorator 'Products::Decorator'
end
