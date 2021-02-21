Rails.application.routes.draw do
  root 'home_page#index'
  
  get '/registrar', to: 'registrar#index'
  post '/registrar/login', to: 'registrar#login'
  post '/registrar/search_results', to: 'registrar#search_results'

  resources :student
  post '/student/login', to: 'student#login'
end
