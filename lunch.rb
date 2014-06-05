require 'sinatra/base'
require 'json'

class Lunch < Sinatra::Base
  set :bind, '0.0.0.0'
  set :raise_errors, false
  set :show_exceptions, false

  get '/lunch' do
    content_type :json
    {:json => 'string'}.to_json
  end
  
end

Lunch.run!
