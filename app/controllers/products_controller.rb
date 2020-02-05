class ProductsController < ApplicationController
  def index
    @products = Product.visible
    respond_to do |format|
        format.html # index.html.slim
        format.xml  { render xml: @products}
        format.json { render json: @products}
    end
  end

  def new
  end

  def show 
    @product = Product.find(params[:id])
    @comments = @product.comments.visible
  end

  def create
  end
end
