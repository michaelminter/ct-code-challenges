Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/timeline/:id', to: 'users#index'
  get '/user/:id', to: 'users#show'

  root to: 'users#index'
end
