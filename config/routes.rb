Rails.application.routes.draw do
  # get "tweets", to: "tweets#index"
  get 'crypto-news', to: 'pages#crypto_feed'
  namespace :users do
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  resources :tweets, only: [:new, :index, :create, :update]
  root to: 'pages#home'
end
