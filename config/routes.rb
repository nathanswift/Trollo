Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'

resources :accounts

  resources :boards do
    resources :lists
  end

  resources :lists do
    resources :tasks
  end
end
