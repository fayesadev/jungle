class Admin::DashboardController < ApplicationController
  def show
    @products = Product.all.count
    @categories = Category.all.count
  end

end
