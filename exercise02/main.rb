require 'sinatra'
require 'slim'

set :public_folder, 'public'

get '/' do
  slim :home 
end

get '/herramientas' do
  slim :herramientas    
end

get '/proyectos' do
  slim :proyectos
end    
