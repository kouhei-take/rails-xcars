Rails.application.routes.draw do
  get 'cars/index'

  devise_for :users
  root to: 'cars#index'
  resources  :cars
  # test xxxx
end
