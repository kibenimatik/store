class Product < ActiveRecord::Base
  attr_accessible :description, :model, :price_in_cents, :vendor

  belongs_to :user
end
