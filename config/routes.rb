Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users
  # post 'users/new'
  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
  get '/users/validation/check_email', to: 'users#check_email', as: :check_email

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
