require('sinatra')
require('sinatra/reloader')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @height = params.fetch("height")
  @width = params.fetch("width")
  if @length == @width
    @parcel = "This is a million dollars."
  else
    @parcel = "This is not a million dollars."
  end
  erb(:output)
end
