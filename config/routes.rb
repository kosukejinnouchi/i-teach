Rails.application.routes.draw do
  devise_for :users
  root "teachers#index"
  resources :users, only: [:edit, :update]
end
