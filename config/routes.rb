Rails.application.routes.draw do
  root to: "homes#index"

  resources :cars
  resources :staffs

  get '/available', to: 'cars#available'
  get '/sold', to: 'cars#sold'

end
