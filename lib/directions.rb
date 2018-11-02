# makes moves

class Directions

  def initialize(x_longitude, y_latitude, direction)
    @x_longitude = x_longitude
    @y_latitude = y_latitude
    @direction = direction
    @navigation = [{direction: "N", move:[1,0]}, {direction:"E", move: [0,1]}, {direction:"S", move: [-1, 0]}, {direction:"W", move: [0, -1]}]
  end

  def move
    change = @navigation.find { |hash|
      hash[:direction] == @direction
    }
    move = change[:move]
    [@x_longitude + move[0], @y_latitude + move[1], @direction]
  end
end
