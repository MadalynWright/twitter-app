Rails.application.routes.draw do
  devise_for :users
 
  get "profiles/:id" => "profiles#show", as: :profile
  get "profiles" => "profiles#index"
  get "feed" => 'profiles#feed'

  root 'tweets#index'

  resources :relationships, only: [:create, :destroy]
  
  resources :tweets do
    resource :like, only: [:create, :destroy]
  end

end
