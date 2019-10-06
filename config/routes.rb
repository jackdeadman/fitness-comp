Rails.application.routes.draw do
  resources :activities
  resources :activity_types
  resources :acitivty_types
  resources :challenges
  devise_for :users
  mount Sidekiq::Web => "/sidekiq" # monitoring console
  root "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
