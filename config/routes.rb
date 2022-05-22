Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'welcome#index'

  get '/profile', to:'users#show'

  get '/delete_users', to:'users#delete_users'

  post '/add_user', to:'users#add_user'

  get '/delete_user/:id', to:'users#delete_user'

end
