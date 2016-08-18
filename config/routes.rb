Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :stores
  get 'pages/index'

  get 'pages/sell'

  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
