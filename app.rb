require 'sinatra/base'
# require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @shape = session[:shape]
    erb :play
  end

  post '/play' do
    session[:shape] = params[:shape]
    redirect to '/play'
  end

  #
  # get '/game' do
  #   @player = $player
  #   @item = $item
  #   @game = Game.new(@player, @item)
  #   @computer = Computer.new
  #   @computer_item = @computer.computer_item
  #   @outcomes = @game.winner(@item,@computer_item)
  #   erb(:game)
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
