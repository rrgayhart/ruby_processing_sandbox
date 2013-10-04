#Type into command line rp5 run my_sketch.rb -- you can also use rp5 watch my_sketch.rb

require 'ruby-processing'
class ProcessArtist < Processing::App
  attr_accessor :queue

  def setup
    background(0, 0, 0)
  end

  def draw
    # Do Stuff
  end

  def run_command(command)
    if command.start_with?("b")
      command = command[1..-1]
    end
    change_background(command)
  end

  def change_background(command)
    split = command.split(",")
    @b1 = split[0].to_i
    @b2 = split[1].to_i
    @b3 = split[2].to_i
    background(@b1, @b2, @b3)
  end

  def key_pressed
    warn "A key was pressed! #{key.inspect}" 
    if @queue.nil?
      @queue = ""
    end
    if key != "\n"
      @queue = @queue + key
    else
      warn "Time to run the command: #{queue}"
      run_command(@queue)
      @queue = ""
    end
  end
end

ProcessArtist.new(:width => 800, :height => 800,
  :title => "ProcessArtist", :full_screen => false)
