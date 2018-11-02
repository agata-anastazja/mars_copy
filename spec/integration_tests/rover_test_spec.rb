require 'rspec'
require_relative "../../lib/rover.rb"
require 'pry'

describe 'Rover' do
  it 'coordinates should change following nasa instructions' do
    rover = Rover.new([0, 0, "N"], ["M"])
    rover.move
    expect(rover.current_position).to eq([1, 0, "N"])
  end
end
