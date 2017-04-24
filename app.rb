require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/myHash')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  binding.pry
  if params.fetch('keys').class == "Array"
    hash = MyHash.new(params.fetch('keys').split(","), params.fetch('values').split(","))
  else
    hash = MyHash.new()
    hash.myStore(params.fetch('keys'), params.fetch('values'))
  end
  @result = hash.myDisplay()
  erb(:result)
end
