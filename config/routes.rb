Rails.application.routes.draw do
  get 'meals/new'

  devise_for :users
  resources :orders
  resources :meals


  root 'orders#index'
  # get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
