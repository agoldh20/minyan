Rails.application.routes.draw do
  get '/' => 'people#attending'

  get '/people' => 'people#index'

  get '/people/new' => 'people#new'
  post '/people' => 'people#create'

  get '/people/:id' => 'people#show'

  patch '/committed' => 'people#update'
  patch '/remove' => 'people#remove'
  patch '/reset' => 'people#reset'

  post '/send_text/:id' => 'people#send_text'

  get '/confirmed' => 'people#confirmed'
end
