require 'sinatra/base'
require_relative './hit_points.rb'

class Battle < Sinatra::Application
  set :session_secret, 'secret'
  enable :sessions

  get '/' do
    erb :index
  end

  post '/battle' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @hit_points = HitPoints.new.score
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end
