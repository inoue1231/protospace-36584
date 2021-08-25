Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "prototypes#index"
  devise_for :users
  resources :prototypes, only: [:index,:new,:create,:show,:edit,:update,:destroy] do
   resources :comments, only: [:create]
  end
  resources :users, only: [:show]

end
