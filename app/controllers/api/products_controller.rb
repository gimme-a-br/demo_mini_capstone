class Api::ProductsController < ApplicationController
  def all_products_action
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product_action
    @product = Product.first
    render "product.json.jb"
  end

  def second_product_action
    @product = Product.second
    render "product.json.jb"
  end

  def third_product_action
    @product = Product.third
    render "product.json.jb"
  end
end
