class Asteroid
  attr_reader :x, :y, :z
  def initialize
    @image = Gosu::Image.new("images/asteroid.png")
    @x = rand(MyWindow::WIDTH-@image.width)
    @y = 0
    @z = 0
    @speed = rand(3..8)
  end

  def update
    @y += @speed
  end

  def draw
    @image.draw(@x,@y,@z)
  end

end
