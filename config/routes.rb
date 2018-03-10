Rails.application.routes.draw do
  namespace :users do
  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  root "tweets#index"
end
