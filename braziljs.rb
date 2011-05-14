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
  @keynotes = Keynote.where("1=1")
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

post '/checkin' do
  @checkin = Checkin.new params[:checkin]
  if @checkin.save
    @checkin.to_json
  else
    @checkin.errors.to_json
  end
end
