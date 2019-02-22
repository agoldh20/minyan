Rails.application.routes.draw do
  get '/people/' => 'people#index'
  get '/people/new' => 'people#new'
  post '/people/' => 'people#create'
  get '/people/:id' => 'people#show'
  get '/people/:id/edit' => 'people#edit'
  patch '/people/:id' => 'people#update'
  delete '/people/:id' => 'people#destroy'

  # get '/minyan' => 'minyan_tracker#index'
  
end
