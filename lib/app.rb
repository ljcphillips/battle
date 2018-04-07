require 'sinatra/base'
require_relative './player.rb'

class Battle < Sinatra::Base
  # set :session_secret, 'secret'
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/battle' do
    $p1 = Player.new(params[:player1]).name
    $p2 = Player.new(params[:player2]).name
    redirect '/play'

  end

  get '/play' do
    # hitpoints = HitPoints.new
    # @p1hp = hitpoints.player_1_score
    # @p2hp = hitpoints.player_2_score
    @player1 = $p1
    @player2 = $p2
    erb :play
  end

  post '/in_play' do

    erb :in_play
  end

  run! if app_file == $0
end
