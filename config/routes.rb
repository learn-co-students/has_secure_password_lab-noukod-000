Rails.application.routes.draw do
  resources :users
  post '/create' => 'sessions#create'
  get '/new' => 'sessions#new'
  get '/home' => 'welcome#home'
  get '/' => 'welcome#home'
end
