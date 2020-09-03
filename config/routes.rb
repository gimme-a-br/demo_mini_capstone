Rails.application.routes.draw do
  namespace :api do
    get "/all_products_path" => "products#all_products_action"

    get "/one_product_path" => "products#one_product_action"
    get "/one_product_path/:product_id" => "products#one_product_action"
  end
end
