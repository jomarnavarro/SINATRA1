require 'sinatra'
#require 'data_mapper'
require 'dm-core'
require 'dm-migrations'
require 'slim'

set :public_folder, 'public'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

class Tool
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :description, Text
  property :bought_on, Date
end

DataMapper.finalize

get '/' do
  slim :home 
end

get '/herramientas' do
  slim :herramientas    
end

get '/proyectos' do
  slim :proyectos
end    

not_found do
  slim :not_found
end