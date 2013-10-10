 attr_accessor :print_letter

 def setup
    size 640, 360
    background(100, 100, 100)
    rect_mode CENTER
    @a = load_image "mrmarsh.jpg"
    image_mode CENTER
    @font = create_font "Georgia", 60 
    text_font @font
    text_align CENTER, CENTER
    @print_letter = "y"
  end

  def place_specific_marker(x, y)
    image(@a, x, y)
  end

  def key_pressed
    @print_letter = key
  end

  def draw
    if mouse_pressed?
      text @print_letter, mouse_x, mouse_y
    elsif key_pressed?
      text @print_letter, mouse_x, mouse_y
      #place_specific_marker(mouse_x, mouse_y)
    end
  end
