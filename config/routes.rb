Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/category', to: 'pages#category', as: :category
  resources :vehicles do
    resources :bookings
  end
  resources :users, only: [:show]
  resources :user do
    resources :bookings
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
