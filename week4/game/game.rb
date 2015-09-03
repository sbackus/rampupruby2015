require 'gosu'
require './ship'
require './asteroid'

class MyWindow < Gosu::Window
  WIDTH = 640
  HEIGHT = 480

  def initialize
   super(WIDTH, HEIGHT, false) #call initialize on parent
   self.caption = 'Space Game!'
   @ship = Ship.new
   # @asteroid = Asteroid.new
   @asteroids = []
  end

  def update
    @ship.update

    if rand(1..100) < 5
      @asteroids << Asteroid.new
    end
    @asteroids.each do |asteroid|
      asteroid.update
    end
  end

  def draw
    @ship.draw
    @asteroids.each do |asteroid|
      asteroid.draw
    end
  end
end
window = MyWindow.new
window.show
