Rails.application.routes.draw do
  post 'api/v1/login', to: "api/v1/sessions#create"
  delete "api/v1/logout", to: "api/v1/sessions#delete"
  get "api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  post 'api/v1/signup', to: 'api/v1/users#create'

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
      resources :comments
    end
  end 
end
