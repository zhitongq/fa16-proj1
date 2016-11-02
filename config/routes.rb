Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture' => 'pokemons#capture'
  patch 'damage' => 'pokemons#damage'
  get '/pokemons/new', to: 'pokemons#new'
  post '/pokemons/create', to: 'pokemons#create'
end
