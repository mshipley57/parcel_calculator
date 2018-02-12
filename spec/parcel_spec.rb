require('rspec')
require('parcel')

describe(Parcel) do
  describe("#parcel?") do
    it("returns volume") do
      dimensions = Parcel.new(15, 30, 20)
      expect(dimensions.volume()).to(eq(9000))
    end
    it("returns diemensional weight") do
      dimensions = Parcel.new(15, 30, 20)
      expect(dimensions.cost()).to(eq(150))
    end
  end
end
