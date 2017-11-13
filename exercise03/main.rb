require './song'
require 'sinatra'
require 'sass'
require 'slim'

get '/songs' do
  @songs = Song.all
  slim :songs
end

get '/songs/new' do
  @song = Song.new
  slim :new_song
end

get '/songs/:id' do
  @song = Song.get(params[:id])
  slim :show_song
end

delete '/songs/:id' do
  Song.get(params[:id]).destroy
  redirect to('/songs')
end

post '/songs' do
  song = Song.create(params[:song])
  redirect to("/songs/#{song.id}")
end

get '/songs/:id/edit' do
  @song = Song.get(params[:id])
  slim :edit_song
end

put '/songs/:id' do
  song = Song.get(params[:id])
  song.update(params[:song])
  redirect to("/songs/#{song.id}")
end