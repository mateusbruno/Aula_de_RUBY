Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  # get 'store/index'
  root 'store#index', as: 'store_index' # store_index_url store_index_path

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
