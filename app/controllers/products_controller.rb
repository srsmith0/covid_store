class ProductsController < ApplicationController
  before_action :set_category
  
  def index
    @products = @category.products
  end

  def show
  end

  def new

  end

  def edit
  end


  def destroy
    @product.destroy
    redirect_to user_category_path(@category.user_id, @category.id)
  end

  private 

    def set_category
      @category = category.find(params[:category_id])
    end

    def product_params
      params.require(:product).permit(:body)
    end

end