Rails.application.routes.draw do
  namespace :users do
  end
  devise_for :users
  root "tweets#index"
end
