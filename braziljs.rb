require 'bundler/setup'
require 'active_record'
require File.expand_path( File.dirname(__FILE__) + '/models/keynote' )
require File.expand_path( File.dirname(__FILE__) + '/models/checkin' )

require 'sinatra'
configure do
  require  File.expand_path( File.dirname(__FILE__) + '/database' )
end

get '/' do
  @current = Keynote.current.first
  @keynotes = Keynote.scoped
  if params[:date]
    @keynotes = @keynotes.by_date(Date.parse(params[:date]))
  end
  erb :index
end

get '/keynote/:id' do
  @keynote = Keynote.find(params[:id])
  erb :keynote
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
  @checkin = Checkin.new :keynote_id => params[:keynote]
  if @checkin.save
    @checkin.to_json
  else
    @checkin.errors.to_json
  end
end

post '/like/:keynote' do
  @keynote = Keynote.find(params[:keynote])
  @keynote.likes += 1
  if @keynote.save
    @checkin.to_json
  else
    @checkin.errors.to_json
  end
end 

post '/unlike/:keynote' do
  @keynote = Keynote.find(params[:keynote])
  @keynote.unlike += 1
  if @keynote.save
    @keynote.to_json
  else
    @keynote.errors.to_json
  end
end
