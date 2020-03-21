Rails.application.routes.draw do
  resources :orders
  devise_for :users
	root 'listings#index'
  resources :listings do
  	resources :orders
  end
  get 'pages/about'
  get 'pages/contact'
  get 'seller', to: 'listings#seller'
end
