Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  get 'users/new'
  get 'users/profile', as: 'user_root'

  get 'fetch_people', to: 'people#fetch', as: 'fetch_people'

  resources :vehicles, only: [:index, :show]
  resources :starships, only: [:index, :show]
  resources :species, only: [:index, :show]
  resources :planets, only: [:index, :show]
  resources :people, only: [:index, :show]
  resources :films, only: [:index, :show]

  root 'static_pages#index'
end
