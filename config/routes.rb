Rails.application.routes.draw do 
  
  root "transactions#index" 

  get "/transactions/index", to: "transactions#index" 
  get "/transactions/showAll", to: "transactions#showAll" 
  get "/transactions/new", to: "transactions#new"  
  get "/transactions/:id", to: "transactions#show"  
  get "/transactions/:id/edit", to: 'transactions#edit' 
  patch "/transactions/:id", to: 'transactions#update'
  post "/transactions/create", to: "transactions#create" 
end
