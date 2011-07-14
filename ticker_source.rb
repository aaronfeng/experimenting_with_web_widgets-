require 'sinatra'
require 'json'

messages = []

get "*" do
  messages.to_json
end

post "*" do
  messages << params[:message]
  messages.shift if messages.length > 5
  return
end
