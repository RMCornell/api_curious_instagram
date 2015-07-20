Rails.application.routes.draw do

  root 'welcome#index'

  get 'auth/instagram', as: '/login_instagram', to: 'welcome#index'

  get 'auth/instagram/callback', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'
end
