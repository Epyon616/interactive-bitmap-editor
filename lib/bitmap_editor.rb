require_relative "bitmap"

class BitmapEditor
  def run
    parse(get_user_input)
  end

  def get_user_input
    print "> "
    gets.chomp
  end

  def parse(input)
    command, *args = input.split(' ').map{ |arg| (arg == "0" || arg.to_i != 0 ) ? arg.to_i : arg }

    case command.upcase
    when  'X'
      return exit 0
    when "I"
      @bitmap = Bitmap.new(*args)
    when "C"
      clear_bitmap
    when "L"
      paint_pixel(*args)
    when "V"
      paint_vertical(*args)
    when "H"
      paint_horizontal(*args)
    when "F"
      paint_region
    when "S"
      @bitmap.show
    end
  end

  def clear_bitmap
    no_method_error if @bitmap.nil?
    @bitmap.clear
  end

  def paint_pixel(*args)
    no_method_error if @bitmap.nil?
    argument_error if args.count != 3
    @bitmap.set_pixel_colour(*args)
  end

  def paint_vertical(*args)
    no_method_error if @bitmap.nil?
    argument_error if args.count != 4
    @bitmap.draw_vertical_segment(*args)
  end

  def paint_horizontal(*args)
    no_method_error if @bitmap.nil?
    argument_error if args.count != 4
    @bitmap.draw_horizontal_segment(*args)
  end

  def paint_region
    no_method_error if @bitmap.nil?
    argument_error if args.count != 3
    @bitmap.fill_region(*args)
  end

  def no_method_error
    raise NoMethodError, "Bitmap has not been initialised"
  end

  def argument_error
    raise ArgumentError, "Incorrect Number of arguments for command"
  end
end
