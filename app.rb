require 'sinatra/base'

class App<Sinatra::Application

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
  new_task = params['new_task']
  end
end