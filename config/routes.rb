Rails.application.routes.draw do
  get 'bookings/index'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/edit'
  # get 'bookings/destroy'
  # get 'cars/index'
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'cars#index'
  resources  :cars

  resources :cars do
    resources :bookings
  end

  resources :users do
    resources :cars, only: [:index]
  end
  # test xxxx
end
