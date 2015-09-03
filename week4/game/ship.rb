class Ship
  attr_reader :x, :y, :z
  def initialize
    @image = Gosu::Image.new("images/spaceship.png")
    @x = MyWindow::WIDTH/2
    @y = MyWindow::HEIGHT - @image.height
    @z = 0
  end

  def update
    if Gosu::button_down? Gosu::KbLeft
      @x -= 3
    elsif Gosu::button_down? Gosu::KbRight
      @x += 3
    end
  end

  def draw
    @image.draw(@x,@y,@z)
  end
end