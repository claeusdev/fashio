Rails.application.routes.draw do
  resources :categories
  get 'user/show'

  devise_for :users
  resources :users
  resources :products
  resources :stores
  get 'pages/index'

  get 'pages/sell'

  get 'pages/about'

  get 'pages/contact'

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
