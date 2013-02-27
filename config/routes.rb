# Fasper::Application.routes.draw do
# begin
#   get "omniauth_callbacks/facebook"

#   get "omniauth_callbacks/vkontakte"

#   root :to => 'home#index'

#   authenticated :user do
#     root :to => 'home#index'
#     get 'users/:id' => 'users#show'
#     resources :orders
#   end
#   #devise_for :users
#   #resources :users
#   #root :to => "home#index"

#   devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
#   resources :users, :only => [:index, :destroy]
# end



# end


Fasper::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, :only => [:index, :destroy]
end