require 'rack'
require 'rackup'

# class MyApp
#   def call(env)
#     [200, { "content-type" => "text/plain" }, ["hello world"]]
#   end
# end

# class MyApp
#   def call(env)
#     body = "<h2>Hello in Style!</h2>"
#     [200, { "content-type" => "text/html" }, [body]]
#   end
# end

class MyApp
  def call(env)
    [200, { "content-type" => "text/plain" }, [env.to_s]]
  end
end

Rackup::Handler::WEBrick.run MyApp.new