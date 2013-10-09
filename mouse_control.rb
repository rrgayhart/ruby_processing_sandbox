def setup
  size 640, 360
  color_mode RGB, 1.0
  rect_mode CENTER
  no_stroke
end

def draw
  background 0
  
  x_dist_blocks = width/2
  block_size = map(mouse_x, 0, width, 10, x_dist_blocks - 10)
  
  left_color = -0.002 * mouse_x / 2 + 0.06
  fill 0.0, left_color + 0.4, left_color + 0.6
  rect(width/4, height / 2, block_size * 2, block_size * 2)
  
  block_size = x_dist_blocks - block_size
  
  right_color = 0.002 * mouse_x/2 + 0.06
  fill(0.0, right_color + 0.2, right_color + 0.4)
  rect((width / 4) * 3, height / 2, block_size * 2, block_size * 2)
end
