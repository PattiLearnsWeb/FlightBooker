Rails.application.routes.draw do
  root 'flight#index'

  resources :bookings, only: [:new, :create, :show]
end
