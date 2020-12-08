Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show] do
    resources :rooms, only: [:index, :show, :create, :destroy ]
  end
  root 'rooms#index'
end
