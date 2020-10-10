Rails.application.routes.draw do

  root"application#home"
  get "/signin", to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout' => 'sessions#destroy'


  resources :users
  resources :rides
  resources :attractions
end
