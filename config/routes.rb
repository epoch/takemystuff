Rails.application.routes.draw do

  get '/sales/new', to: 'sales#new'
  get '/sales/:id', to: 'sales#show'
  post '/sales', to: 'sales#create'

  # bcrypt, update user model...
  get '/login', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/about', to: 'pages#about_us'
  get '/', to: 'pages#home'

end
