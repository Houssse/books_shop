class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show ]

  def show
  end
  

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)

    if @product.save
      flash[:success] = "Object successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def params_product
    params.require(:product).permit(:title, :summary, :price)
  end
  
end
