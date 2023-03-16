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
    collection do
      get :my_flats
    end
    resources :bookings, only: [ :index, :new, :create, :show, :edit, :update]
  end

  get "booking_requests", to: "bookings#booking_requests"
  get "my_bookings", to: "bookings#my_bookings"

  # resources :bookings, only [ :new, :create ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
