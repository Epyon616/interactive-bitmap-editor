class Bitmap
  attr_reader :cols, :rows, :pixels

  def initialize(cols, rows)
    @cols, @rows = cols, rows
    clear
  end

  def clear
    @pixels = (1..@rows).map{ (1..@cols).map{"O"} }
  end

  def get_pixel_colour(x,y)
    @pixels[x - 1][y - 1]
  end

  def set_pixel_colour(x,y,colour)
    @pixels[y - 1][x - 1] = colour
  end

  def draw_vertical_segment(col, from_row, to_row, colour)
    (from_row..to_row).each{ |row| set_pixel_colour(col, row, colour) }
  end

  def draw_horizontal_segment(row, from_col, to_col, colour)
    (from_col..to_col).each{ |col| set_pixel_colour(col, row, colour) }
  end
end
