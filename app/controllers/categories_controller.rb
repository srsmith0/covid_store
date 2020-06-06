class CategoriesController < ApplicationController
  before_action :only [:new, :show, :destroy, :edit, :update]
  
  def index
  end

  def new
    @category.new = Category.create(category_params)
  end

  def show
    @products = Product.find(set_product)
  end

  def edit
    
  end

  def destroy
    @category.delete
  end


  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def set_category
    Category.find(params[:id])
  end

  def set_product
    Product.find(params[:id])
  end

end
