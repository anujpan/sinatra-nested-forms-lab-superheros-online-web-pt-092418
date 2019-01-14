require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    get '/teams' do
      @team = Team.new(params)

      params[members].each do |m|
        Member.new(m)
      end
  
      erb :team
    end
end
