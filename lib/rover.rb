require 'directions'
# out of bounds error

# executes instructions from nasa
require 'pry'

class Rover
  attr_reader :current_position

  def initialize(initial_position, nasa_instructions)
    @current_position = initial_position
  end

  def move(directions = Directions)
    instructions = get_directions(directions)
    @current_position = instructions.move
  end

  private

  def get_directions(directions)
    x_longitude = @current_position[0]
    y_latitude = @current_position[1]
    direction = @current_position[2]
    directions.new(x_longitude, y_latitude, direction)
  end
end
