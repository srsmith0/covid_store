class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  def index
    @products = current_user.products
  end

  def new
    @product = @category.products.new(product_params)
    render partial: "form"
  end

  def show
  end

  def create
    @product = @category.products.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @product.update(product_params)
      redirect_to category_path(@product.category_id)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
