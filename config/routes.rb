Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy' 
      #new code input 
      get '/users/cancel' => 'devise/registrations#cancel'
  end
  #root 'tasks#index'
  root 'home#index'
  resources :categories
  resources :tasks
  resources :home
end
