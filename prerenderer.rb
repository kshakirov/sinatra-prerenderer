require 'sinatra/base'

class Prerenderer < Sinatra::Base
 set :public_folder, 'public'

 get '/part/sku/:id' do
   id =  @params['id']
   send_file("public/#{id}.html")
 end
  run! if app_file == $0
end
