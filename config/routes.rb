Crowdfunder::Application.routes.draw do
  
  root :to => 'projects#index'

  resources :projects do
  	resources :pledges
  end
  resources :users

  get 'session/new' => 'session#new', as: 'new_session'
  post 'session/' => 'session#create'
  delete 'session' => 'session#destroy'

  get 'login' => 'session#new'
  post 'login' => 'session#create'

  get 'logout' => 'session#destroy'

end