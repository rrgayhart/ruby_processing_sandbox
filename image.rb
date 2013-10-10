 def setup
    size 640, 360
    background(100, 100, 100)
    rect_mode CENTER
    @a = load_image "mrmarsh.jpg"
    image_mode CENTER
  end

  def place_specific_marker(x, y)
    image(@a, x, y)
  end

  def draw
    if mouse_pressed?
      place_specific_marker(mouse_x, mouse_y)
    end
  end
