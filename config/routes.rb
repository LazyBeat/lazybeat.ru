Rails.application.routes.draw do
  resources :posts
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
