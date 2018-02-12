class Parcel
  def initialize(length, width, height)
    @length = length
    @height = height
    @width = width
  end

  def volume
    result = (@length * @width * @height)
    return result
  end

  def cost
    result = (@length * @width * @height).to_i
    sprintf('%.2f',(0.05)*result)
  end

  def surfaceArea
    result = ((@length * @height) * 2) + ((@length * @width) * 2) + ((@width * @height) * 2)
  end
end
