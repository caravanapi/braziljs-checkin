require 'bundler/setup'

Bundler.setup(:default)

require 'sinatra'

require 'models/keynote'

get '/(index)' do
  erb :index
end
