Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'flats/index'
  # get 'flats/show'
  devise_for :users
  root to: "pages#home"
  resources :flats, only: [ :index, :new, :show, :create ] do
    resources :bookings, only: [ :index, :new, :create, :show ]
  end

  # resources :bookings, only [ :new, :create ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
