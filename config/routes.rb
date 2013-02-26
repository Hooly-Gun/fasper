Fasper::Application.routes.draw do
  get "omniauth_callbacks/facebook"

  get "omniauth_callbacks/vkontakte"

  resources :orders


  authenticated :user do
    root :to => 'home#index'
  end
  #devise_for :users
  resources :users
  root :to => "home#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
 # resources :users, :only => [:index, :destroy]
 # root :to => 'users#index'


end
