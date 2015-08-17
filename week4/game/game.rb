require 'gosu'
require './ship'

class MyWindow < Gosu::Window
  WIDTH = 640
  HEIGHT = 480

  def initialize
   super(WIDTH, HEIGHT, false) #call initialize on parent
   self.caption = 'Hello World!'
   @ship = Ship.new
  end

  def update
    @ship.update
  end

  def draw
    @ship.draw
  end
end

window = MyWindow.new
window.show
