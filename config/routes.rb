Rails.application.routes.draw do
  get "test1", to: "testing#test1"
  get "test2", to: "testing#test2"

  post '/signup', to: 'registrations#create'
  post 'login', to: 'sessions#create'

end
