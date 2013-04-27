class HomeController < ApplicationController
  respond_to :html

  def index
    respond_with Products::Base.new(as: current_user, params: params).collection
  end
end
