Rails.application.routes.draw do

  resources :sales, except: [:destroy, :update]
  # get '/sales/new', to: 'sales#new'
  # # sales_controller new method sales/new.html.erb
  # get '/sales/:id', to: 'sales#show'
  # post '/sales', to: 'sales#create'

  # delete '/sales/:id', to: 'sales#destroy'
  # get '/sales/:id/edit', to: 'sales#edit'
  # put '/sales/:id', to: 'sales#update'
  # get '/sales', to: 'sales#index'

  # todo: add bcrypt, update user model...
  get '/login', to: 'session#new' 
  # session_controller new method session/new.html.erb
  post '/session', to: 'session#create'
  # session_controller create method probably redirect
  delete '/session', to: 'session#destroy'
  # session_controller destroy method also redirect

  get '/about', to: 'pages#about_us'
  # pages_controller about_us method pages/about_us.html.erb

  get '/', to: 'pages#home'
  # pages_controller home method pages/home.html.erb

end
