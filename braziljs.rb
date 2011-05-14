require 'bundler/setup'
require 'active_record'
require 'models/keynote'
require 'models/checkin'

require 'sinatra'

get '/(index)' do
  erb :index
end
