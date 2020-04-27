Rails.application.routes.draw do
  post 'api/v1/login', to: "api/v1/sessions#create"


  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
      resources :comments
    end
  end 
end
