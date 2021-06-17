require "sinatra/base"
# require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :production, :development do
  end
  get "/" do
    erb :index
  end
  # get "/" do
  #   "Hello world!"
  # end
  post "/names" do
    @player_1 = params[:playes_1]
    @player_2 = params[:player_2]
    erb :play
  end
  # get

  run! if app_file == $0
end
