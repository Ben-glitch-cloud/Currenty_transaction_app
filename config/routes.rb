Rails.application.routes.draw do 
  resources :transaction
  root "transactions#index" 

  get "/transactions/index", to: "transactions#index" 
  get "/transactions/showAll", to: "transactions#showAll" 
  get "/transactions/new", to: "transactions#new"  
  get "/transactions/:id", to: "transactions#show" 
  post "/transactions/create", to: "transactions#create" 
end
