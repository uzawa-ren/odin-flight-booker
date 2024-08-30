Rails.application.routes.draw do
  root "flights#index"
  resources :flights, only: :index
  resources :bookings, only: [:new, :create, :show]

  get "up" => "rails/health#show", as: :rails_health_check
end
