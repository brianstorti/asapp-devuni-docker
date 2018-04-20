require 'sinatra'
require 'sinatra/reloader'
require 'redis'

set :bind, '0.0.0.0'

REDIS = Redis.new(host: "redis")

get '/' do
  counter = REDIS.incr("counter")
  `cowsay I can count: #{counter}`
end
