Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'

  root to: redirect('/pitches')
  #resources :pitches
  
  #If you don’t want your non-admin users to update your pitches you can easy fix this by updating your route file to only allow “index” and “show”. 
  #Add only: [:show, :index] to config/route.rb:
  resources :pitches, only: [:show, :index] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
