Rails.application.routes.draw do
  
  resources :reviews do
    resources :comments
  end
  
  resources :users
  
  resource :session
  
  root "reviews#index"
    
end
