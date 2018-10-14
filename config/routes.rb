Rails.application.routes.draw do
  root to: "homes#index"

  resources :cars
  resources :staffs
end
