Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/show'
  devise_for :users
  root to: "pages#home"
  resources :flats, only: [ :index, :new, :show, :create ]

  # resources :bookings, only [ :new, :create ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
