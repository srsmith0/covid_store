class CategoriesController < ApplicationController
  before_action only: [:new, :create, :show, :destroy, :edit, :update]
  
  def index
    @categories = Category.all
  end

  def new
    @category.new = Category.create(category_params)
  end

  def create
    @category.new = Category.create(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new 
  end
end


  def show
    @categories = Category.all
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
