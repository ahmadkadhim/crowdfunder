Crowdfunder::Application.routes.draw do
  resources :projects
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'projects#index'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  get 'logout' => 'sessions#destroy'

end