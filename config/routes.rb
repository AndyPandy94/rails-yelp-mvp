Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "restaurants", to: "restaurant#index"

  # get "restaurants/new", to: "restaurant#new", as: :new_restaurant
  # post "restaurants", to: "restaurant#create"

  # get "restaurants/:id", to: "restaurant#show", as: :restaurant

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
