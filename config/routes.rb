Crowdfunder::Application.routes.draw do
  
  root :to => 'projects#index'

  resources :projects
  resources :users

  get 'session/new'
  post 'session/' => 'session#create'
  delete 'session' => 'session#destroy'

  get 'login' => 'session#new'
  post 'login' => 'session#create'

  get 'logout' => 'session#destroy'

end