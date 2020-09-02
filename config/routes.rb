Rails.application.routes.draw do
  namespace :api do
    get "/all_products_path" => "products#all_products_action"

    get "/first_product_path" => "products#first_product_action"
    get "/second_product_path" => "products#second_product_action"
    get "/third_product_path" => "products#third_product_action"
  end
end
