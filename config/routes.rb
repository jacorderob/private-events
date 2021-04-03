Rails.application.routes.draw do
  resources :users
  resources :events

  get 'login', to: 'registrations#log_in'
  post 'signin', to: 'registrations#sign_in'

  root 'registrations#log_in'
end
