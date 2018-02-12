require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/parcel')


get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length").to_i
  @height = params.fetch("height").to_i
  @width = params.fetch("width").to_i
  parcelobject = Parcel.new(@length, @width, @height)

  @parcel_volume = parcelobject.volume
  erb(:output)
  @parcel_cost = parcelobject.cost
  erb(:output)
  @parcel_surface = parcelobject.surfaceArea
  erb(:output)

end
