class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_by(uid: auth_hash['uid']) do |user|
      user.name = auth_hash['info']['name']
      user.email = auth_hash['info']['email']
      user.image_url = auth_hash['info']['image']
    end
  end
end
