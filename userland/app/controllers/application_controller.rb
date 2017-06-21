class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by_uid(session[:user_uid])
  end

  helper_method :current_user

  def current_user=(user)
    @current_user = user
    session[:user_uid] = @current_user.uid
    session[:user_name] = @current_user.name
  end

  def authenticate_user
    if session[:user_uid].nil?
      redirect_to login_path
    end
  end
end
