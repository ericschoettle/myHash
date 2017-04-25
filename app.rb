require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/myHash')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  hash = MyHash.new(params.fetch('keys').split(","), params.fetch('values').split(","))
  @result = hash.myDisplay()
  erb(:result)
end
