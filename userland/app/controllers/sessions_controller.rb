class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def login
    if current_user
      redirect_to posts_url
    end
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_by(uid: auth_hash['uid']) do |user|
      user.name = auth_hash['info']['name']
      user.nickname = auth_hash['info']['nickname']
    end
    self.current_user = @user
    redirect_to posts_url
  end

  def logout
    reset_session
    redirect_to login_url, notice: "You have been successfully logged out."
  end
end
