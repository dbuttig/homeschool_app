Rails.application.routes.draw do
  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/login'

  #get 'sessions/welcome'

  #get 'users/new'

  #get 'users/create'

  resource :session
  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'dashboard', to: 'sessions#dashboard'
  get 'authorized', to: 'sessions#page_requires_login'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
