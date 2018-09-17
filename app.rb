require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get "/name" do
    erb(:index)
  end

  post "/name" do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect "/play"
  end

  get "/play" do
    p session[:player_1]
    p session[:player_2]
    erb(:play)
  end
end
