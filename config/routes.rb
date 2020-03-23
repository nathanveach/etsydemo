Rails.application.routes.draw do
  resources :orders
  devise_for :users
	root 'listings#index'
  resources :listings do
  	resources :orders, only: [:new, :create]
  end
  get 'pages/about'
  get 'pages/contact'
  get 'seller', to: 'listings#seller'
  get 'sales', to: 'orders#sales'
  get 'purchases', to: 'orders#purchases'
end
