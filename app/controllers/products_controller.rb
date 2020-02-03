class ProductsController < ApplicationController
  def index
    @products = Product.paginate(page: params[:page])
    respond_to do |format|
        format.html # index.html.slim
        format.xml  { render xml: @products}
        format.json { render json: @products}
    end
  end

  def new
  end

  def create
  end
end
