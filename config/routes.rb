Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :orders
  resources :line_items
  resources :carts
  # get 'store/index'
  root 'store#index', as: 'store_index' # store_index_url store_index_path

  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
