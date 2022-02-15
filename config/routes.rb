Rails.application.routes.draw do
  devise_for :users
  get 'logs/index'
  root to: "logs#index"
  resources :users, only: [:edit, :update]
end
