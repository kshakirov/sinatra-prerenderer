require 'sinatra/base'
require_relative 'lib'

class Prerenderer < Sinatra::Base
  set :public_folder, 'public'
  set :cat, Catalog.new

  get '/part/sku/:id' do
    id = @params['id']
    send_file("public/#{id}.html")
  end
  get '/parts' do
    @ids  = settings.cat.parts
    erb :catalog
  end
  run! if app_file == $0
end
