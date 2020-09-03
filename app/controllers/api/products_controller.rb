class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "all_products.json.jb"
  end

  def one_product_action
    @product = Product.find_by(id: params["product_id"])
    render "product.json.jb"
  end
end
