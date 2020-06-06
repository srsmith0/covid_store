class CategoriesController < ApplicationController
  def index
  end

  def new
  end

  def show
    @products = Product.find(product_params)
  end

  def edit
  end

  private

  def product_params
    Product.find(params[:id])
  end

end
