class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.create(name: params[:name], description: params[:description], price: params[:price])
    # render :text => @product.inspect
    redirect_to '/products/index'
  end

  # def new
  end
# end
