class ProductsController < ApplicationController
  def index
    @products = params[:category_id] ?  Product.visible.by_category(params[:category_id]) : Product.visible
    @categories = Category.all
    
    @contributors = User.top_contributors

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
