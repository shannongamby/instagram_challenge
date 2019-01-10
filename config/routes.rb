Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts/index'
  get 'posts/new'
  get 'sessions/new'
  get 'profile', to: 'posts#profile'
  post '/posts', to: 'posts#create'
  delete '/posts/:id', to: 'posts#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end
