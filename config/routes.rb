Rails.application.routes.draw do
  devise_for :users
 root "transactions#index" 

  get "/transactions/index", to: "transactions#index" 
  get "/transactions/showAll", to: "transactions#showAll" 
  get "/transactions/new", to: "transactions#new"  
  get "/transactions/:id", to: "transactions#show" 

  post "/transactions/create", to: "transactions#create"

end


#bin/rails generate model Transaction customer_id:integer currency_input:string amount_input:integer currency_output:string amount_output:integer 

#