require 'sinatra'

get '/:name' do
  @user = params['name']
  haml :index
end
