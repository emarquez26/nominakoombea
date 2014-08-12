require 'rubygems'
require 'sinatra'
require 'sqlite3'
require "bundler/setup"

load '_form/database.rb'
#set :port, 3000
class MyApp < Sinatra::Application

  set :public_folder, '_form'
  get '/' do
    File.read('views/index.html.erb')
  end
  get '/savemp' do
    File.read('views/savemp.html.erb')
    #newemp= Conexion.new
  end

  post '/savemp/new' do
    newemp= Conexion.new.insert("#{params[:name]}", "#{params[:apll]}",
    "#{params[:id]}", "#{params[:tel]}", "#{params[:mail]}", "#{params[:carge]}",
    "#{params[:vlhrs]}", "#{params[:hrtrab]}")
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
end