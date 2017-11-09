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

not_found do
  slim :not_found
end