Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "products#index"

  resources :products do
    resources :comments
  end
end