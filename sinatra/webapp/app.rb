require 'sinatra/base'
require 'redis'
require 'json'

class App < Sinatra::Application
    set :bind, '0.0.0.0'
    redis = Redis.new(host:'redis',port:6379)
    get '/' do
        pv = redis.incr("pv")
        "Hello World---->> PV: #{pv}"
      end

    post '/json/?' do 
        params.to_json
    end
end

App.run!
