require "sinatra"

get "/" do
  erb :new
end

post "/" do
  @name = Rack::Utils.escape_html(params.fetch("name") { halt 400 })
  @token = SecureRandom.alphanumeric(20).downcase
  File.write "public/feeds/#{@token}.xml", "TODO: THE FEED"
  erb :created
end