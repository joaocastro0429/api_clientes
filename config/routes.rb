Rails.application.routes.draw do
  post '/login', to: 'administradors#login'
  resources :employees
  root 'home#index'
  resources :clients
end
