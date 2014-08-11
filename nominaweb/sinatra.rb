require 'sinatra'
require 'sqlite3'
load '_form/database.rb'
#set :port, 3000
set :public_folder, '_form'
get '/' do
  File.read('views/index.html.erb')
end
get '/savemp' do
  File.read('views/savemp.html.erb')
end

post '/savemp/new' do
  load 'lib/application.rb'
  newemp= Employee.new
  nom=params[:name]; aplld=params[:apll]; id=params[:id]; telfn=params[:tel];
  mail=params[:mail]; cargo=params[:carge]; vlhr=params[:vlhrs]; hrtr=params[:hrtrab]
  newemp.newc(nom, aplld, id, telfn, mail, cargo, vlhr, hrtr)
  redirect '/savemp'
end

get '/watchemp' do
  erb :watchemp
end

get '*/images/emp.png' do
  redirect 'images/emp.css'
end

get '*/style/styleweb.css' do
  redirect 'styles/styleweb.css'
end