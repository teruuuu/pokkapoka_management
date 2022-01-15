Rails.application.routes.draw do
  root "users#index"
  devise_for :users
  resources :users, only: [:index, :show]
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
