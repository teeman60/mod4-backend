Rails.application.routes.draw do

  
  resources :memes
  resources :users
  
  # specify only: routes once we have them all set up

  post "/login", to: "auth#create"

end
