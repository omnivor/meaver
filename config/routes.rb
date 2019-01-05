Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  root 'home#index'
  get 'home/about'
  resources :contacts, only: [ :new, :create ]
  
end
