  attr_accessor :image_coordinates_x, :image_coordinates_y

  def setup
    size 640, 360
    background(100, 100, 100)
    rect_mode CENTER
    @a = load_image "mrmarsh.jpg"
    image_mode CENTER 
  end

  #def mouse_released
  #  background(100, 100, 100)
  #  #rect(1,2,1,1)
  #end

  def place_specific_marker(x, y)
    image(@a, x, y, 10 * 5, 10 * 5)
  end

  def draw
    if mouse_pressed?
      place_specific_marker(mouse_x, mouse_y)
    end
  end
