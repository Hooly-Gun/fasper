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


=begin
Fasper::Application.routes.draw do
  get "omniauth_callbacks/facebook"

  get "omniauth_callbacks/vkontakte"

  resources :orders


  authenticated :user do
    root :to => 'home#index'
  end
#  root :to => "home#index"
#  devise_for :users
#  resources :users

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, :only => [:index, :destroy]
  root :to => 'users#index'

end
=end



BaseApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  match "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end



# Fasper::Application.routes.draw do

#   get "omniauth_callbacks/facebook"
#   get "omniauth_callbacks/vkontakte"

#   authenticated :user do
#     root :to => 'home#index'
#   end
#   root :to => "home#index"
#   #devise_for :users
#   resources :users

#   devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
#   resources :users, :only => [:index, :destroy]
# end