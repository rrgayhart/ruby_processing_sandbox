def setup
  size 640, 360
  coswave = []
  
  0.upto( width ) do |i|
    amount = map i, 0, width, 0, PI
    coswave[i] = cos( amount ).abs
  end
  
  0.upto( width ) do |i|
    stroke( coswave[i] * 255 )
    line i, 0, i, height/3
  end
  
  0.upto( width ) do |i|
    stroke( coswave[i] * 255 / 4 )
    line i, height/3, i, height/3*2
  end
  
  0.upto( width ) do |i|
    stroke( 255 - coswave[i] * 255 )
    line i, height/3*2, i, height
  end
  
end
