Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "products#index"

  resources :products do
    resources :comments
  end
end