Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campers, only: [:index, :show, :create]
  get '/campers', to: 'campers#index'
  get '/campers/:id', to: 'campers#show'


  resources :activities, only: [:index, :destroy]
  get '/activities', to: 'activities#index'

  resources :signups, only: [:create]
  post '/signups', to: 'signups#create'

end
