class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by(uid: session[:user_uid])
  end

  helper_method :current_user

  def current_user=(user)
    session[:user_uid] = user.uid
    session[:user_name] = user.name
  end

end
