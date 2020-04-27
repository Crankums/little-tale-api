Rails.application.routes.draw do
  get 'appi/v1/login', to: "sessions#create"


  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
      resources :comments
    end
  end 
end
