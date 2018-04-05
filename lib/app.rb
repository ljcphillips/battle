require 'sinatra/base'

class Battle < Sinatra::Application


  get '/' do
    erb :index
  end

  post '/battle' do
  @player1 = params[:player1]
  @player2 = params[:player2]
  erb :play
  end

  run! if app_file == $0
end
