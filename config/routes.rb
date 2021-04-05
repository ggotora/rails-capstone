Rails.application.routes.draw do
  root 'home#index'
  # get 'sign_up', to: 'registrations#new'
  # post 'sign_up', to: 'registrations#create'
  resources :users

  # get 'edit_user', to: 'users#edit'
  # patch 'edit_user', to: 'users#update'
  # delete 'edit_user', to: 'users#destroy'
  
end
