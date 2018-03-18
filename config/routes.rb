Rails.application.routes.draw do
  get '/' => 'people#attending'

  get '/people' => 'people#index'

  get '/people/new' => 'people#new'
  post '/people' => 'people#create'

  get '/people/:id' => 'people#show'

  get '/committed/:id/confirm' => 'people#edit'
  patch '/committed/:id' => 'people#update'

  get '/confirmed' => 'people#confirmed'
end
