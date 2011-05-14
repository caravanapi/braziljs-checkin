require 'bundler/setup'
require 'active_record'
require File.expand_path( File.dirname(__FILE__) + '/models/keynote' )
require File.expand_path( File.dirname(__FILE__) + '/models/checkin' )

require 'sinatra'
configure do
  require  File.expand_path( File.dirname(__FILE__) + '/database' )
end

helpers do
  def avatar(keynote)
    keynote.title =~ /Lightning/ ? "/img/sem-imagem-thumb.png" : "/img/photos/#{keynote.author.parameterize}.jpg"
  end
end

get '/' do
  @current = Keynote.current.first
  @keynotes = Keynote.scoped
  @keynotes = @keynotes.by_date(params[:date] ? Date.parse(params[:date]) : Date.today)
  erb :index, :layout => !request.xhr?
end

get '/keynote/:id' do
  @keynote = Keynote.find(params[:id])
  erb :keynote, :layout => !request.xhr?
end

post '/keynotes' do
  @keynote = Keynote.new params[:keynote]
  if @keynote.save
    @keynote.to_json
  else
    @keynote.errors.to_json
  end
end

post '/checkin/:keynote' do
  @keynote = Keynote.find params[:keynote]
  @checkin = Checkin.new :keynote => @keynote
  if @checkin.save
    erb :keynote, :layout => !request.xhr?
  else
    @checkin.errors.to_json
  end
end

post '/like/:keynote' do
  @keynote = Keynote.find(params[:keynote])
  @keynote.likes += 1
  if @keynote.save
    erb :keynote, :layout => !request.xhr?
  else
    @checkin.errors.to_json
  end
end 

post '/unlike/:keynote' do
  @keynote = Keynote.find(params[:keynote])
  @keynote.unlike += 1
  if @keynote.save
    erb :keynote, :layout => !request.xhr?
  else
    @keynote.errors.to_json
  end
end
