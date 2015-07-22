Rails.application.routes.draw do

  root 'welcome#index'

  #Authoriztion Routes
  get 'auth/instagram', as: '/login_instagram', to: 'welcome#index'
  get 'auth/instagram/callback', to: 'sessions#create'

  resources :users, only: [:show]

  delete '/logout', to: 'sessions#destroy'

  #Content Routes
  get 'https://api.instagram.com/v1/users/current_user.id/followed-by?access_token=current_user.token', as: '/followed_by', to: 'welcome#followed_by'
end
