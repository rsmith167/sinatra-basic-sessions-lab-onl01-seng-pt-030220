require_relative 'config/environment'

 configure do
  enable :sessions
  set :session_secret, "secret"
  end


class App < Sinatra::Base
  
 get '/' do
      erb :index
 end
 post "/checkout" do
   @sessions = {}
   @sessions = sessions
  @sessions["item"] = params[:item]
  
  @sessions["item"]
 end
end