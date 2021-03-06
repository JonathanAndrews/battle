require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, "something"

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect "/play"
  end

  get "/play" do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end
end
