require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangle')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  triangle = Triangle.new(params.fetch('side1').to_i(), params.fetch('side2').to_i(), params.fetch('side3').to_i())
  @result = triangle.type()
  erb(:result)
end
