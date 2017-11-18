Rails.application.routes.draw do
  
  ActiveAdmin.routes(self)
  
  resources :reviews do
    resources :comments
    resource :bookmark
  end
  
  resources :users
  
  resource :session

  root "reviews#index"
    
end
