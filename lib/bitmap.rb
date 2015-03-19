class Bitmap
  attr_reader :cols, :rows, :pixels

  def initialize(cols, rows)
    @cols, @rows = cols, rows
    clear
  end

  def clear
    @pixels = (1..@rows).map{ (1..@cols).map{"O"}}
  end

  def get_pixel_colour(x,y)
    @pixels[x - 1][y - 1]
  end
end
