Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :flats, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :index, :show ]
  end
  resources :bookings, only: [ :edit, :update ]
  resources :users, only: []
end
