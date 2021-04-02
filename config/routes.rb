Rails.application.routes.draw do
  get 'registrations/new'
  get 'registrations/create'
  root 'home#index'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registratons#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
