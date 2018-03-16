Rails.application.routes.draw do
  get '/' => 'people#attending'

  get '/people' => 'people#index'
end
