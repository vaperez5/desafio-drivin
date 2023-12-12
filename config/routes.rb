Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'routes', to:'routes#index'
  get '/routes/:id', to: 'routes#show'
  post '/orders', to: 'orders#create'
end
