#class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
#
#  def vkontakte
#  end
#  
#  def facebook
#    <hh user=user> = User.find_for_facebook_oauth request.env["omniauth.auth"]
#    if <hh user=user>.persisted?
#      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
#      sign_in_and_redirect <hh user=user>, :event => :authentication
#    else
#      flash[:notice] = "authentication error"
#      redirect_to root_path
#    end
#end


class Users::OmniauthCallbacksController < ApplicationController
  def facebook
    @user = User.find_for_facebook_oauth request.env["omniauth.auth"]
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      flash[:notice] = "authentication error"
      redirect_to root_path
    end
  end