Rails.application.routes.draw do

  root 'welcome#index'

  #Authoriztion Routes
  get 'auth/instagram', as: '/login_instagram', to: 'welcome#index'
  get 'auth/instagram/callback', to: 'sessions#create'
  resources :users, only: [:show]

  delete '/logout', to: 'sessions#destroy'
end
