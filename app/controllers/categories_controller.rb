class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :destroy, :edit, :update]
  
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    render partial: "form"
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new 
  end
end


  def show
    @products = Product.all.select { |x| x.category_id == @category.id }
  end

  def edit
    render partial: "form"
    
  end

  def destroy
    @category.delete
  end


  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def set_product
    Product.find(params[:id])
  end

end
