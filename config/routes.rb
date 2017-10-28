Rails.application.routes.draw do
  
  resources :reviews
  
  root "reviews#index"
  
  
end
