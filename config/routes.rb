Rails.application.routes.draw do
  devise_for :users
  root to: 'car#index'
  resources: cars
  # test xxxx
end