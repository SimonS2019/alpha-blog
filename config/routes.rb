Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
# root 'application#hello'
root 'pages#home'
get 'about', to: 'pages#about'

  # resources :articles, only: [:show, :index, :new, :create, :edit, :update,:destroy]
# the above line will create all the routes for the articles
# so we don't need to write the routes for the articles
resources :articles

# we can mofiify the routes by using the only option

  #rails routes --expanded
  #the above command will show all the routes

# Article.all
# this will show all the articles

end
