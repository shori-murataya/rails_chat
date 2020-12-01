Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
  root to: 'home#index'
  get 'home/show'
  get 'rooms/show'
end
