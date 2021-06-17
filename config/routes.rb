Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 resources :chorus
 root 'chorus#index'

 resources :users, only: [:show, :index]
 
 resources :questions
 resources :answers
end
