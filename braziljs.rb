require 'bundler/setup'

Bundler.setup(:default)

require 'sinatra'

require 'models/keynote'
require 'models/checkin'

get '/(index)' do
  erb :index
end
