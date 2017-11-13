require './song'
require 'sinatra'
require 'sass'
require 'slim'

get '/songs' do
  @songs = Song.all
  slim :songs
end

