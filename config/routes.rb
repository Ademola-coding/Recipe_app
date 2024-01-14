Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root "home#index"
  get '/home', to: 'home#index'
  resources :recipe_foods, only: %i[new create destroy]
  resources :general_shopping_lists, only: [:index]
  resources :users, only: %i[index show new create destroy]
  resources :recipes, only: %i[index show new create destroy]
  get '/public_recipe', to: 'recipes#public_recipe', as: 'public_recipe'
  resources :foods, only: %i[index show new create destroy]
end
