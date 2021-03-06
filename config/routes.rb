Rails.application.routes.draw do
  resources :courses
  get 'sessions/new'

  resources :users
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/perguntas', to: 'static_pages#answers'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  root :to => "static_pages#index"
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
