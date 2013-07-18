Crowdfunder::Application.routes.draw do
  resources :projects
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'projects#index'

end
