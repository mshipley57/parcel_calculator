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

  @lengthhalf = @length/2 +10
  @widthhalf = @width/2 +10
  @heighthalf = @height/2 +10

  parcelobject = Parcel.new(@length, @width, @height)

  @parcel_volume = parcelobject.volume

  @parcel_cost = parcelobject.cost

  @parcel_surface = parcelobject.surfaceArea
  erb(:output)

end
