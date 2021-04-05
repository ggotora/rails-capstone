Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  root 'home#index'
  # get 'sign_up', to: 'registrations#new'
  # post 'sign_up', to: 'registrations#create'
  resources :users
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  
  delete 'logout', to: 'sessions#destroy'

  # get 'edit_user', to: 'users#edit'
  # patch 'edit_user', to: 'users#update'
  # delete 'edit_user', to: 'users#destroy'
  
end
