Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :posts
  resources :users, except: [:new, :destroy]
  get '/register', to: 'users#new'
  root 'welcome#index'

end
