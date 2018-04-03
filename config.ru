require_relative 'prerenderer'
run Rack::URLMap.new({
                         '/' => Prerenderer,
                     })