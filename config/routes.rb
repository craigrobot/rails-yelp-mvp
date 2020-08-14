Rails.application.routes.draw do
  # For details on the DSL available within this file, see get    "restaurants",          to: "restaurants#index",  as: :restaurants
  # GET "restaurants"
  get "/restaurants", to: "restaurants#index", as: :restaurants
  # GET "restaurants/38"
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant


end
