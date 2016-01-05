Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: [:index, :create]

  mount ActionCable.server => '/cable'

  root 'messages#index'
end
