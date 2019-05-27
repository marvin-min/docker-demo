require 'sinatra/base'
require 'json'

class App < Sinatra::Application
    set :bind, '0.0.0.0'
    get '/' do
        "Hello World---->>"
      end

    post '/json/?' do 
        params.to_json
    end
end

App.run!
