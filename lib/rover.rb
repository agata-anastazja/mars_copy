# require 'directions'
require 'pry'

class Rover 
  attr_reader :current_position
  
  def initialize(initial_position, nasa)
    @current_position = initial_position
  end
  
end