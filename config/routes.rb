Rails.application.routes.draw do
  root "flights#index"
  resources :bookings, only: [:new, :create]

  get "up" => "rails/health#show", as: :rails_health_check
end
