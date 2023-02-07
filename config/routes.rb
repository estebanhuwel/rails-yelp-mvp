Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # GET "restaurants" - ver todos los restaurantes
  # get 'restaurants', to: 'restaurants#index'

  # GET "restaurants/new" - crear un nuevo restaurante
  # POST "restaurants"
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # GET "restaurants/:id" - ver los detalles de un restaurante
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # GET "restaurants/:id/reviews/new" - agregar un review a un restaurante
  # POST "restaurants/:id/reviews"
  # get 'restaurants/:id/reviews/new', to: 'restaurants#new_review', as: :new_review
  # post 'restaurants/:id/reviews/', to: 'reviews#create'

  # LA FORMA CORRECTA DE HACERLO
  # # GET "restaurants" - ver todos los restaurantes
  # # GET "restaurants/new" - crear un nuevo restaurante
  # # POST "restaurants"
  # # GET "restaurants/:id" - ver los detalles de un restaurante
  # # GET "restaurants/:id/reviews/new" - agregar un review a un restaurante
  # # POST "restaurants/:id/reviews"
  root to: "restaurants#index"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end
