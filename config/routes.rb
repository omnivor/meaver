Rails.application.routes.draw do
  devise_for :admins
  resources :posts
  root 'home#index'
  get 'home/about'
  get 'contacts' => 'contacts#new'
  resources :contacts, only: [ :new, :create ]
  
end
